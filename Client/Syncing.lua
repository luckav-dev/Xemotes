local isRequestAnim = false
local requestedemote = ''
if Config.SharedEmotesEnabled then
    RegisterCommand('nearby', function(source, args, raw)
        if #args > 0 then
            local emotename = string.lower(args[1])
            target, distance = GetClosestPlayer()
            if(distance ~= -1 and distance < 3) then
                if DP.Shared[emotename] ~= nil then
                    dict, anim, ename = table.unpack(DP.Shared[emotename])
                    TriggerServerEvent("ServerEmoteRequest", GetPlayerServerId(target), emotename)
                    SimpleNotify(Config.Languages[lang]['sentrequestto']..GetPlayerName(target).." ~w~(~g~"..ename.."~w~)")
                else
                    EmoteChatMessage("'"..emotename.."' "..Config.Languages[lang]['notvalidsharedemote'].."")
                end
            else
                SimpleNotify(Config.Languages[lang]['nobodyclose'])
            end
        else
            MearbysOnCommand()
        end
    end, false)
end

RegisterNetEvent("SyncPlayEmote")
AddEventHandler("SyncPlayEmote", function(emote, player)
    EmoteCancel()
    Wait(300)
    -- wait a little to make sure animation shows up right on both clients after canceling any previous emote
    if DP.Shared[emote] ~= nil then
        if OnEmotePlay(DP.Shared[emote]) then end
    elseif DP.Dances[emote] ~= nil then
        if OnEmotePlay(DP.Dances[emote]) then end
    elseif DP.GangSigns[emote] ~= nil then
        if OnEmotePlay(DP.GangSigns[emote]) then end
    end
end)

RegisterNetEvent("SyncPlayEmoteSource")
AddEventHandler("SyncPlayEmoteSource", function(emote, player)
    -- Thx to Poggu for this part!
    local pedInFront = GetPlayerPed(GetClosestPlayer())
    local heading = GetEntityHeading(pedInFront)
    local coords = GetOffsetFromEntityInWorldCoords(pedInFront, 0.0, 1.0, 0.0)
    if (DP.Shared[emote] and DP.Shared[emote].AnimationOptions) then
        local SyncOffsetFront = DP.Shared[emote].AnimationOptions.SyncOffsetFront
        if SyncOffsetFront then
            coords = GetOffsetFromEntityInWorldCoords(pedInFront, 0.0, SyncOffsetFront, 0.0)
        end
    end
    if (DP.Shared[emote] and DP.Shared[emote].AnimationOptions and DP.Shared[emote].AnimationOptions.Atatchto == true) then
        local xPos = DP.Shared[emote].AnimationOptions.xPos or 0.0
        local yPos = DP.Shared[emote].AnimationOptions.yPos or 0.0
        local zPos = DP.Shared[emote].AnimationOptions.zPos or 0.0
        local xRot = DP.Shared[emote].AnimationOptions.xRot or 0.0
        local yRot = DP.Shared[emote].AnimationOptions.yRot or 0.0
        local zRot = DP.Shared[emote].AnimationOptions.zRot or 0.0
        AttachEntityToEntity(GetPlayerPed(-1), pedInFront, 11816, xPos, yPos, zPos, xRot, yRot, zRot, false, false, false, false, 2, false)
    end
    SetEntityHeading(PlayerPedId(), heading - 180.1)
    SetEntityCoordsNoOffset(PlayerPedId(), coords.x, coords.y, coords.z, 0)
    EmoteCancel()
    Wait(300)
    if DP.Shared[emote] ~= nil then
        if OnEmotePlay(DP.Shared[emote]) then end
    elseif DP.Dances[emote] ~= nil then
        if OnEmotePlay(DP.Dances[emote]) then end
    elseif DP.GangSigns[emote] ~= nil then
        if OnEmotePlay(DP.GangSigns[emote]) then end
    end
end)

RegisterNetEvent("ClientEmoteRequestReceive")
AddEventHandler("ClientEmoteRequestReceive", function(emotename, etype)
    isRequestAnim = true
    requestedemote = emotename

    if etype == 'Dances' then
        _,_,remote = table.unpack(DP.Dances[requestedemote])
    else
        _,_,remote = table.unpack(DP.Shared[requestedemote])
    end

    PlaySound(-1, "NAV", "HUD_AMMO_SHOP_SOUNDSET", 0, 0, 1)
    SimpleNotify(Config.Languages[lang]['doyouwanna']..remote.."~w~)")
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(5)
        if IsControlJustPressed(1, 246) and isRequestAnim then
        target, distance = GetClosestPlayer()
            if(distance ~= -1 and distance < 3) then
                if DP.Shared[requestedemote] ~= nil then
                    _,_,_,otheremote = table.unpack(DP.Shared[requestedemote])
                elseif DP.Dances[requestedemote] ~= nil then
                    _,_,_,otheremote = table.unpack(DP.Dances[requestedemote])
                end
                if otheremote == nil then otheremote = requestedemote end
                TriggerServerEvent("ServerValidEmote", GetPlayerServerId(target), requestedemote, otheremote)
                isRequestAnim = false
            else
                SimpleNotify(Config.Languages[lang]['nobodyclose'])
            end
        elseif IsControlJustPressed(1, 182) and isRequestAnim then
            SimpleNotify(Config.Languages[lang]['refuseemote'])
            isRequestAnim = false
        end
    end
end)

-----------------------------------------------------------------------------------------------------
------ Functions and stuff --------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------

function GetPlayerFromPed(ped)
    for _,player in ipairs(GetActivePlayers()) do
        if GetPlayerPed(player) == ped then
            return player
        end
    end
    return -1
end

function GetPedInFront()
    local player = PlayerId()
    local plyPed = GetPlayerPed(player)
    local plyPos = GetEntityCoords(plyPed, false)
    local plyOffset = GetOffsetFromEntityInWorldCoords(plyPed, 0.0, 1.3, 0.0)
    local rayHandle = StartShapeTestCapsule(plyPos.x, plyPos.y, plyPos.z, plyOffset.x, plyOffset.y, plyOffset.z, 10.0, 12, plyPed, 7)
    local _, _, _, _, ped2 = GetShapeTestResult(rayHandle)
    return ped2
end

function MearbysOnCommand(source, args, raw)
  local NearbysCommand = ""
  for a in pairsByKeys(DP.Shared) do
    NearbysCommand = NearbysCommand .. ""..a..", "
  end
  EmoteChatMessage(NearbysCommand)
  EmoteChatMessage(Config.Languages[lang]['emotemenucmd'])
end

function SimpleNotify(message)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(message)
    DrawNotification(0,1)
end

function GetClosestPlayer()
    local players = GetPlayers()
    local closestDistance = -1
    local closestPlayer = -1
    local ply = GetPlayerPed(-1)
    local plyCoords = GetEntityCoords(ply, 0)

    for index,value in ipairs(players) do
        local target = GetPlayerPed(value)
        if(target ~= ply) then
            local targetCoords = GetEntityCoords(GetPlayerPed(value), 0)
            local distance = GetDistanceBetweenCoords(targetCoords["x"], targetCoords["y"], targetCoords["z"], plyCoords["x"], plyCoords["y"], plyCoords["z"], true)
            if(closestDistance == -1 or closestDistance > distance) then
                closestPlayer = value
                closestDistance = distance
            end
        end
    end
    return closestPlayer, closestDistance
end

function GetPlayers()
    local players = {}

    for i = 0, 255 do
        if NetworkIsPlayerActive(i) then
            table.insert(players, i)
        end
    end

    return players
end