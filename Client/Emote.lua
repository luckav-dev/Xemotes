local AnimationDuration = -1
local ChosenAnimation = ""
local ChosenDict = ""
local IsInAnimation = false
local MostRecentChosenAnimation = ""
local MostRecentChosenDict = ""
local MovementType = 0
local PlayerGender = "male"
local PlayerHasProp = false
local PlayerProps = {}
local PlayerParticles = {}
local SecondPropEmote = false
local ThirdPropEmote = false
local lang = Config.MenuLanguage
local PtfxNotif = false
local PtfxPrompt = false
local PtfxWait = 500
local PtfxNoProp = false

Citizen.CreateThread(function()
  while true do

    if IsPedShooting(PlayerPedId()) and IsInAnimation then
      EmoteCancel()
    end

    if PtfxPrompt then
      if not PtfxNotif then
          SimpleNotify(PtfxInfo)
          PtfxNotif = true
      end
      if IsControlPressed(0, 47) then
        PtfxStart()
        Wait(PtfxWait)
        PtfxStop()
      end
    end

    if Config.MenuKeybindEnabled then if IsControlPressed(0, Config.MenuKeybind) then OpenEmoteMenu() end end
    if Config.EnableXtoCancel then if IsControlPressed(0, 73) then EmoteCancel() end end
    Citizen.Wait(1)
  end
end)



Citizen.CreateThread(function()
    TriggerEvent('chat:addSuggestion', '/e', 'Play an emote', {{ name="emotename", help="dance, camera, sit or any valid emote."}})
    TriggerEvent('chat:addSuggestion', '/e', 'Play an emote', {{ name="emotename", help="dance, camera, sit or any valid emote."}})
    TriggerEvent('chat:addSuggestion', '/emote', 'Play an emote', {{ name="emotename", help="dance, camera, sit or any valid emote."}})
    if Config.SqlKeybinding then
      TriggerEvent('chat:addSuggestion', '/emotebind', 'Bind an emote', {{ name="key", help="num4, num5, num6, num7. num8, num9. Numpad 4-9!"}, { name="emotename", help="dance, camera, sit or any valid emote."}})
      TriggerEvent('chat:addSuggestion', '/emotebinds', 'Check your currently bound emotes.')
    end
    TriggerEvent('chat:addSuggestion', '/emotemenu', 'Open dpemotes menu (F3) by default.')
    TriggerEvent('chat:addSuggestion', '/emotes', 'List available emotes.')
    TriggerEvent('chat:addSuggestion', '/walk', 'Set your walkingstyle.', {{ name="style", help="/walks for a list of valid styles"}})
    TriggerEvent('chat:addSuggestion', '/walks', 'List available walking styles.')
end)

RegisterCommand('e', function(source, args, raw) EmoteCommandStart(source, args, raw) end)
RegisterCommand('emote', function(source, args, raw) EmoteCommandStart(source, args, raw) end)
if Config.SqlKeybinding then
  RegisterCommand('emotebind', function(source, args, raw) EmoteBindStart(source, args, raw) end)
  RegisterCommand('emotebinds', function(source, args, raw) EmoteBindsStart(source, args, raw) end)
end
RegisterCommand('emotemenu', function(source, args, raw) OpenEmoteMenu() end)
RegisterCommand('emotes', function(source, args, raw) EmotesOnCommand() end)
RegisterCommand('walk', function(source, args, raw) WalkCommandStart(source, args, raw) end)
RegisterCommand('walks', function(source, args, raw) WalksOnCommand() end)

AddEventHandler('onResourceStop', function(resource)
  if resource == GetCurrentResourceName() then
    DestroyAllProps()
    ClearPedTasksImmediately(GetPlayerPed(-1))
    ResetPedMovementClipset(PlayerPedId())
  end
end)



function EmoteCancel()

  if ChosenDict == "MaleScenario" and IsInAnimation then
    ClearPedTasksImmediately(PlayerPedId())
    IsInAnimation = false
    DebugPrint("Forced scenario exit")
  elseif ChosenDict == "Scenario" and IsInAnimation then
    ClearPedTasksImmediately(PlayerPedId())
    IsInAnimation = false
    DebugPrint("Forced scenario exit")
  end

  PtfxNotif = false
  PtfxPrompt = false

  if IsInAnimation then
    PtfxStop()
    ClearPedTasks(GetPlayerPed(-1))
    DestroyAllProps()
    DetachEntity(GetPlayerPed(-1), true, false) --Das ist die ├änderung hier ;) mehr nicht.
    IsInAnimation = false
  end
end

function DebugPrint(args)
  if Config.DebugDisplay then
    print(args)
  end
end

function PtfxStart()
    if PtfxNoProp then
      PtfxAt = PlayerPedId()
    else
      PtfxAt = prop
    end
    UseParticleFxAssetNextCall(PtfxAsset)
    Ptfx = StartNetworkedParticleFxLoopedOnEntityBone(PtfxName, PtfxAt, Ptfx1, Ptfx2, Ptfx3, Ptfx4, Ptfx5, Ptfx6, GetEntityBoneIndexByName(PtfxName, "VFX"), 1065353216, 0, 0, 0, 1065353216, 1065353216, 1065353216, 0)
    SetParticleFxLoopedColour(Ptfx, 1.0, 1.0, 1.0)
    table.insert(PlayerParticles, Ptfx)
end

function PtfxStop()
  for a,b in pairs(PlayerParticles) do
    DebugPrint("Stopped PTFX: "..b)
    StopParticleFxLooped(b, false)
    table.remove(PlayerParticles, a)
  end
end

function EmotesOnCommand(source, args, raw)
  local EmotesCommand = ""
  for a in pairsByKeys(DP.Emotes) do
    EmotesCommand = EmotesCommand .. ""..a..", "
  end
  EmoteChatMessage(EmotesCommand)
  EmoteChatMessage(Config.Languages[lang]['emotemenucmd'])
end

function pairsByKeys (t, f)
    local a = {}
    for n in pairs(t) do
        table.insert(a, n)
    end
    table.sort(a, f)
    local i = 0      -- iterator variable
    local iter = function ()   -- iterator function
        i = i + 1
        if a[i] == nil then
            return nil
        else
            return a[i], t[a[i]]
        end
    end
    return iter
end

function EmoteMenuStart(args, hard)
    local name = args
    local etype = hard

    if etype == "dances" then
        if DP.Dances[name] ~= nil then
          if OnEmotePlay(DP.Dances[name]) then end
        end
    elseif etype == "gangsigns" then
        if DP.GangSigns[name] ~= nil then
            if OnEmotePlay(DP.GangSigns[name]) then end
        end
    elseif etype == "props" then
        if DP.PropEmotes[name] ~= nil then
          if OnEmotePlay(DP.PropEmotes[name]) then end
        end
    elseif etype == "newprops" then
        if DP.NewPropEmotes[name] ~= nil then
          if OnEmotePlay(DP.NewPropEmotes[name]) then end
        end
    elseif etype == "newemotespack" then
        if DP.NewEmotes[name] ~= nil then
          if OnEmotePlay(DP.NewEmotes[name]) then end
        end
    elseif etype == "oldemotespack" then
        if DP.OldEmotes[name] ~= nil then
          if OnEmotePlay(DP.OldEmotes[name]) then end
        end
    elseif etype == "emotes" then
        if DP.Emotes[name] ~= nil then
          if OnEmotePlay(DP.Emotes[name]) then end
        else
          if name ~= "­ƒò║ Dance Emotes" then end
        end
    elseif etype == "expression" then
        if DP.Expressions[name] ~= nil then
          if OnEmotePlay(DP.Expressions[name]) then end
        end
    elseif etype == "walks" then
        if DP.Walks[name] ~= nil then
          WalkMenuStart(name)
        end
    end
end

function EmoteCommandStart(source, args, raw)
  local playerPed = PlayerPedId()
  if not IsPedFalling(PlayerPedId()) then
    if #args > 0 then
      local name = string.lower(args[1])
    
      if IsPedInAnyVehicle(playerPed, true) and (string.sub(name, 1, 7) == 'passout' or name == 'prone')  then
        if string.sub(name, 1, 7) == 'passout' then
          TriggerServerEvent('ShadowCore:AnticheatMsg', 'Passout? Te desmasyaste muy duro!!')
        else
          TriggerServerEvent('ShadowCore:AnticheatMsg', 'prone prone prone prone!')
        end
      else
        if name == "c" then
            if IsInAnimation then
                EmoteCancel()
            else
                EmoteChatMessage(Config.Languages[lang]['nocancel'])
            end
          return
        elseif name == "help" then
          EmotesOnCommand()
        return end
        if DP.OldEmotes[name] ~= nil then
          if OnEmotePlay(DP.OldEmotes[name]) then end return
        elseif DP.Dances[name] ~= nil then
          if OnEmotePlay(DP.Dances[name]) then end return
        elseif DP.NewPropEmotes[name] ~= nil then
          if OnEmotePlay(DP.NewPropEmotes[name]) then end return
        elseif DP.PropEmotes[name] ~= nil then
          if OnEmotePlay(DP.PropEmotes[name]) then end return
        elseif DP.NewEmotes[name] ~= nil then
          if OnEmotePlay(DP.NewEmotes[name]) then end return
        else
          EmoteChatMessage("'"..name.."' "..Config.Languages[lang]['notvalidemote'].."")
        end
      end

    end
  else
    TriggerServerEvent('ShadowCore:EmoteAnticheatMsg', 'No querias caer pero ahora te caiste mas duro!')
  end
end


function LoadAnim(dict)
  while not HasAnimDictLoaded(dict) do
    RequestAnimDict(dict)
    Wait(10)
  end
end

function LoadPropDict(model)
  while not HasModelLoaded(GetHashKey(model)) do
    RequestModel(GetHashKey(model))
    Wait(10)
  end
end

function PtfxThis(asset)
  while not HasNamedPtfxAssetLoaded(asset) do
    RequestNamedPtfxAsset(asset)
    Wait(10)
  end
  UseParticleFxAssetNextCall(asset)
end

function DestroyAllProps()
  for _,v in pairs(PlayerProps) do
    DeleteEntity(v)
  end
  PlayerHasProp = false
  DebugPrint("Destroyed Props")
end

function AddPropToPlayer(prop1, bone, off1, off2, off3, rot1, rot2, rot3)
  local Player = PlayerPedId()
  local x,y,z = table.unpack(GetEntityCoords(Player))

  if not HasModelLoaded(prop1) then
    LoadPropDict(prop1)
  end

  prop = CreateObject(GetHashKey(prop1), x, y, z+0.2,  true,  true, true)
  AttachEntityToEntity(prop, Player, GetPedBoneIndex(Player, bone), off1, off2, off3, rot1, rot2, rot3, true, true, false, true, 1, true)
  table.insert(PlayerProps, prop)
  PlayerHasProp = true
  SetModelAsNoLongerNeeded(prop1)
end

-----------------------------------------------------------------------------------------------------
-- V -- This could be a whole lot better, i tried messing around with "IsPedMale(ped)"
-- V -- But i never really figured it out, if anyone has a better way of gender checking let me know.
-- V -- Since this way doesnt work for ped models.
-- V -- in most cases its better to replace the scenario with an animation bundled with prop instead.
-----------------------------------------------------------------------------------------------------

function CheckGender()
  local hashSkinMale = GetHashKey("mp_m_freemode_01")
  local hashSkinFemale = GetHashKey("mp_f_freemode_01")

  if GetEntityModel(PlayerPedId()) == hashSkinMale then
    PlayerGender = "male"
  elseif GetEntityModel(PlayerPedId()) == hashSkinFemale then
    PlayerGender = "female"
  end
  DebugPrint("Set gender as = ("..PlayerGender..")")
end

-----------------------------------------------------------------------------------------------------
------ This is the major function for playing emotes! -----------------------------------------------
-----------------------------------------------------------------------------------------------------

function OnEmotePlay(EmoteName)
  InVehicle = IsPedInAnyVehicle(PlayerPedId(), true)
  
  if not Config.AllowedInCars and InVehicle == 1 then
    return
  end

  if not DoesEntityExist(GetPlayerPed(-1)) then
    return false
  end

  if Config.DisarmPlayer then
    if IsPedArmed(GetPlayerPed(-1), 7) then
      SetCurrentPedWeapon(GetPlayerPed(-1), GetHashKey('WEAPON_UNARMED'), true)
    end
  end

  ChosenDict,ChosenAnimation,ename = table.unpack(EmoteName)
  
  -- Manejo especial para expresiones faciales
  if ChosenDict == "Expression" then
    SetFacialIdleAnimOverride(PlayerPedId(), ChosenAnimation, 0)
    IsInAnimation = true
    return true
  end
  
  -- Verificar si el diccionario existe, si no, intentar usar una animación alternativa
  local dictExists = true
  if not HasAnimDictLoaded(ChosenDict) then
    RequestAnimDict(ChosenDict)
    local attempts = 0
    while not HasAnimDictLoaded(ChosenDict) and attempts < 10 do
      Citizen.Wait(100)
      attempts = attempts + 1
    end
    
    if not HasAnimDictLoaded(ChosenDict) then
      dictExists = false
      -- Log para depuración
      TriggerEvent('chat:addMessage', {
        color = {255, 0, 0},
        multiline = true,
        args = {"X-Emotes", "Diccionario de animación no encontrado: " .. ChosenDict}
      })
      
      -- Si es una animación mikey@gangsigns@new, usar una alternativa
      if ChosenDict == "mikey@gangsigns@new" then
        -- Usar custom@gsign como alternativa
        local alternativeIndex = tonumber(string.match(ChosenAnimation, "mgangsign_(%d+)")) or 1
        if alternativeIndex > 14 then alternativeIndex = alternativeIndex % 14 + 1 end
        
        local alternativeDict
        if alternativeIndex <= 9 then
          alternativeDict = "custom@gsign_0" .. alternativeIndex
        else
          alternativeDict = "custom@gsign_" .. alternativeIndex
        end
        
        local alternativeAnim = "gsign_" .. (alternativeIndex <= 9 and "0" .. alternativeIndex or alternativeIndex)
        
        -- Verificar si la alternativa existe
        RequestAnimDict(alternativeDict)
        Citizen.Wait(300)
        if HasAnimDictLoaded(alternativeDict) then
          ChosenDict = alternativeDict
          ChosenAnimation = alternativeAnim
          dictExists = true
        end
      end
      
      -- Si aún no se puede cargar, usar una animación fallback genérica
      if not dictExists then
        -- Usar una animación genérica que siempre existe
        ChosenDict = "anim@mp_player_intupperwave"
        ChosenAnimation = "idle_a"
        RequestAnimDict(ChosenDict)
        Citizen.Wait(300)
      end
    end
  end

  AnimationDuration = -1

  if PlayerHasProp then
    DestroyAllProps()
  end

  if ChosenDict == "MaleScenario" or ChosenDict == "Scenario" then
    CheckGender()
    if ChosenDict == "MaleScenario" then 
      if InVehicle then return false end
      if PlayerGender == "male" then
        ClearPedTasks(GetPlayerPed(-1))
        TaskStartScenarioInPlace(GetPlayerPed(-1), ChosenAnimation, 0, true)
        IsInAnimation = true
      else
        EmoteChatMessage(Config.Languages[lang]['maleonly'])
      end 
      return true
    elseif ChosenDict == "ScenarioObject" then 
      if InVehicle then return false end
      BehindPlayer = GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 0 - 0.5, -0.5);
      ClearPedTasks(GetPlayerPed(-1))
      TaskStartScenarioAtPosition(GetPlayerPed(-1), ChosenAnimation, BehindPlayer['x'], BehindPlayer['y'], BehindPlayer['z'], GetEntityHeading(PlayerPedId()), 0, 1, false)
      IsInAnimation = true
      return true
    elseif ChosenDict == "Scenario" then 
      if InVehicle then return false end
      ClearPedTasks(GetPlayerPed(-1))
      TaskStartScenarioInPlace(GetPlayerPed(-1), ChosenAnimation, 0, true)
      IsInAnimation = true
      return true 
    end
  end

  LoadAnim(ChosenDict)

  if EmoteName.AnimationOptions then
    if EmoteName.AnimationOptions.EmoteLoop then
      MovementType = 1
      if EmoteName.AnimationOptions.EmoteMoving then
        MovementType = 51
      end
    elseif EmoteName.AnimationOptions.EmoteMoving then
      MovementType = 51
    elseif EmoteName.AnimationOptions.EmoteMoving == false then
      MovementType = 0
    elseif EmoteName.AnimationOptions.EmoteStuck then
      MovementType = 50
    end
  else
    MovementType = 0
  end

  if InVehicle == 1 then
    MovementType = 51
  end

  if EmoteName.AnimationOptions then
    if EmoteName.AnimationOptions.EmoteDuration == nil then
      EmoteName.AnimationOptions.EmoteDuration = -1
      AttachWait = 0
    else
      AnimationDuration = EmoteName.AnimationOptions.EmoteDuration
      AttachWait = EmoteName.AnimationOptions.EmoteDuration
    end

    if EmoteName.AnimationOptions.PtfxAsset then
      PtfxAsset = EmoteName.AnimationOptions.PtfxAsset
      PtfxName = EmoteName.AnimationOptions.PtfxName
      if EmoteName.AnimationOptions.PtfxNoProp then
        PtfxNoProp = EmoteName.AnimationOptions.PtfxNoProp
      else
        PtfxNoProp = false
      end
      Ptfx1, Ptfx2, Ptfx3, Ptfx4, Ptfx5, Ptfx6, PtfxScale = table.unpack(EmoteName.AnimationOptions.PtfxPlacement)
      PtfxInfo = EmoteName.AnimationOptions.PtfxInfo
      PtfxWait = EmoteName.AnimationOptions.PtfxWait
      PtfxNotif = false
      PtfxPrompt = true
      PtfxThis(PtfxAsset)
    else
      PtfxPrompt = false
    end
  end

  TaskPlayAnim(GetPlayerPed(-1), ChosenDict, ChosenAnimation, 2.0, 2.0, AnimationDuration, MovementType, 0, false, false, false)
  RemoveAnimDict(ChosenDict)
  IsInAnimation = true
  MostRecentDict = ChosenDict
  MostRecentAnimation = ChosenAnimation

  if EmoteName.AnimationOptions then
    if EmoteName.AnimationOptions.Prop then
        PropName = EmoteName.AnimationOptions.Prop
        PropBone = EmoteName.AnimationOptions.PropBone
        PropPl1, PropPl2, PropPl3, PropPl4, PropPl5, PropPl6 = table.unpack(EmoteName.AnimationOptions.PropPlacement)
        if EmoteName.AnimationOptions.SecondProp then
          SecondPropName = EmoteName.AnimationOptions.SecondProp
          SecondPropBone = EmoteName.AnimationOptions.SecondPropBone
          SecondPropPl1, SecondPropPl2, SecondPropPl3, SecondPropPl4, SecondPropPl5, SecondPropPl6 = table.unpack(EmoteName.AnimationOptions.SecondPropPlacement)
          SecondPropEmote = true
        else
          SecondPropEmote = false
        end
        Wait(AttachWait)
        AddPropToPlayer(PropName, PropBone, PropPl1, PropPl2, PropPl3, PropPl4, PropPl5, PropPl6)
        if SecondPropEmote then
          AddPropToPlayer(SecondPropName, SecondPropBone, SecondPropPl1, SecondPropPl2, SecondPropPl3, SecondPropPl4, SecondPropPl5, SecondPropPl6)
        end
    end
  end
  return true
end

function WalkMenuStart(name)
  local name = name

  if name == "reset" then
    ResetPedMovementClipset(PlayerPedId(), 0)
    TriggerEvent('chat:addMessage', {
      color = {0, 255, 0},
      multiline = true,
      args = {"X-Emotes", "Caminata restablecida a normal"}
    })
    return
  end

  if DP.Walks[name] ~= nil then
    local walkStyle = DP.Walks[name][1]
    
    if walkStyle == "" or walkStyle == nil then
      TriggerEvent('chat:addMessage', {
        color = {255, 0, 0},
        multiline = true,
        args = {"X-Emotes", "Estilo de caminata inválido"}
      })
      return
    end
    
    if not HasAnimSetLoaded(walkStyle) then
      RequestAnimSet(walkStyle)
      
      local timeout = 0
      -- Esperar a que cargue o timeout
      while not HasAnimSetLoaded(walkStyle) do
        timeout = timeout + 1
        Citizen.Wait(100)
        if timeout > 35 then break end
      end
    end
    
    if HasAnimSetLoaded(walkStyle) then
      SetPedMovementClipset(PlayerPedId(), walkStyle, 0.2)
      TriggerEvent('chat:addMessage', {
        color = {0, 255, 0},
        multiline = true,
        args = {"X-Emotes", "Caminando como: " .. name}
      })
    else
      TriggerEvent('chat:addMessage', {
        color = {255, 0, 0},
        multiline = true,
        args = {"X-Emotes", "No se pudo cargar la animación de caminata"}
      })
    end
  else
    TriggerEvent('chat:addMessage', {
      color = {255, 0, 0},
      multiline = true,
      args = {"X-Emotes", "'" .. name .. "' no es un estilo de caminata válido"}
    })
  end
end

function WalkCommandStart(source, args, raw)
  local WalksCommand = ""
  if args[1] == nil then
    WalksOnCommand()
    return
  else
    local name = args[1]
    if name == "reset" then
      ResetPedMovementClipset(PlayerPedId(), 0)
      return
    end
    
    WalkMenuStart(name)
  end
end

function WalksOnCommand()
  local WalksCommand = "Estilos de caminata disponibles: "
  for name,style in pairs(DP.Walks) do
    WalksCommand = WalksCommand .. name .. ", "
  end
  WalksCommand = WalksCommand .. "o 'reset' para volver a la caminata normal."
  
  TriggerEvent('chat:addMessage', {
    color = {0, 255, 255},
    multiline = true,
    args = {"X-Emotes", WalksCommand}
  })
end

-- Función de prueba para caminatas
function TestWalk(name)
  if name ~= nil and DP.Walks[name] ~= nil then
    local walkStyle = DP.Walks[name][1]
    if not HasAnimSetLoaded(walkStyle) then
      RequestAnimSet(walkStyle)
      while not HasAnimSetLoaded(walkStyle) do
        Citizen.Wait(100)
      end
    end
    
    SetPedMovementClipset(PlayerPedId(), walkStyle, 0.2)
    print("Walk style set to: " .. name .. " using animation " .. walkStyle)
    return true
  else
    print("Invalid walk style: " .. (name or "nil"))
    return false
  end
end