TriggerServerEvent("dp:CheckVersion")

rightPosition = {x = 1400, y = 200}
leftPosition = {x = 0, y = 100}
menuPosition = {x = 0, y = 200}

if Config.MenuPosition then
  if Config.MenuPosition == "left" then
    menuPosition = leftPosition
  elseif Config.MenuPosition == "right" then
    menuPosition = rightPosition
  end
end

if Config.CustomMenuEnabled then
  local RuntimeTXD = CreateRuntimeTxd('Custom_Menu_Head')
  local Object = CreateDui(Config.MenuImage, 512, 128)
  _G.Object = Object
  local TextureThing = GetDuiHandle(Object)
  local Texture = CreateRuntimeTextureFromDuiHandle(RuntimeTXD, 'Custom_Menu_Head', TextureThing)
  Menuthing = "Custom_Menu_Head"
else
  Menuthing = "shopui_title_sm_hangar"
end


_menuPool = NativeUI.CreatePool()
mainMenu = NativeUI.CreateMenu("", "", menuPosition["x"], menuPosition["y"], Menuthing, Menuthing)
_menuPool:Add(mainMenu)

-- Variables para la interfaz NUI
local isNUIOpen = false

-- Lista para almacenar los emotes favoritos
local FavEmotes = {}

function ShowNotification(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(false, false)
end

local EmoteTable = {}
local FavEmoteTable = {}
local KeyEmoteTable = {}
local DanceTable = {}
local GangTable = {}
local PropETable = {}
local NewPropTable = {}
local NewEmotesTable = {}
local OldEmotesTable = {}
local WalkTable = {}
local FaceTable = {}
local ShareTable = {}
local FavoriteEmote = ""

-- Función para abrir el menú NUI en lugar del menú nativo
function OpenEmoteMenu()
  -- Asegurar que se cierra si ya está abierto
  if isNUIOpen then
    CloseEmoteMenu()
    Citizen.Wait(200)
  end
  
  isNUIOpen = true
  
  -- Usar DisableControlAction para desactivar el movimiento de la cámara pero permitir correr
  Citizen.CreateThread(function()
    while isNUIOpen do
      -- Desactivar movimiento de cámara con ratón
      DisableControlAction(0, 1, true) -- LookLeftRight
      DisableControlAction(0, 2, true) -- LookUpDown
      DisableControlAction(0, 3, true) -- VehicleLookLeftRight
      DisableControlAction(0, 4, true) -- VehicleLookUpDown
      DisableControlAction(0, 5, true) -- VehicleLookLeftRight (Partes adicionales)
      DisableControlAction(0, 6, true) -- VehicleLookUpDown (Partes adicionales)
      
      -- Permitir controles de movimiento (W,A,S,D, correr, saltar, etc.)
      -- No se desactivan los controles de movimiento para permitir moverte
      
      -- Importante: Habilitar mouse input para la interfaz
      EnableControlAction(0, 237, true) -- Mouse click
      EnableControlAction(0, 238, true) -- Mouse click
      
      -- Verificar si se presiona la tecla Escape para cerrar el menú
      if IsControlJustPressed(0, 177) then -- Tecla ESCAPE
        CloseEmoteMenu()
      end
      
      Citizen.Wait(0)
    end
  end)
  
  -- Habilitar cursor para la interfaz permitiendo control del juego
  SetNuiFocus(true, true)
  
  -- Enviar mensaje al frontend y asegurar que llegue
  Citizen.CreateThread(function()
    -- Intentar enviar el mensaje varias veces para asegurar que la UI lo recibe
    for i = 1, 3 do
      SendNUIMessage({
        action = "openMenu"
      })
      Citizen.Wait(100)
    end
  end)
end

-- Función para cerrar el menú NUI
function CloseEmoteMenu()
  -- Si el menú ya está cerrado, no hacer nada
  if not isNUIOpen then return end
  
  isNUIOpen = false
  -- Liberar el control del ratón y la cámara
  SetNuiFocus(false, false)
  -- Enviar mensaje al frontend
  SendNUIMessage({
    action = "closeMenu"
  })
  -- Asegurarse de que se restablecen todos los controles
  Citizen.CreateThread(function()
    Wait(100) -- Pequeña espera para asegurar que todo se sincroniza
    -- Habilitar explícitamente los controles de cámara
    EnableAllControlActions(0)
    EnableAllControlActions(1)
    EnableAllControlActions(2)
  end)
end

-- Registro de callbacks NUI
RegisterNUICallback("closeMenu", function(data, cb)
  CloseEmoteMenu()
  cb('ok')
end)

function CheckAnimationExist(emote, etype)
  -- Verificar el tipo de emote para obtener el diccionario apropiado
  local dict = ""
  local anim = ""
  
  if etype == "dances" then
    if DP.Dances[emote] ~= nil then
      dict, anim = table.unpack(DP.Dances[emote])
    end
  elseif etype == "props" then
    if DP.PropEmotes[emote] ~= nil then
      dict, anim = table.unpack(DP.PropEmotes[emote])
    end
  elseif etype == "newprops" then
    if DP.NewPropEmotes[emote] ~= nil then
      dict, anim = table.unpack(DP.NewPropEmotes[emote])
    end
  elseif etype == "newemotespack" then
    if DP.NewEmotes[emote] ~= nil then
      dict, anim = table.unpack(DP.NewEmotes[emote])
    end
  elseif etype == "oldemotespack" then
    if DP.OldEmotes[emote] ~= nil then
      dict, anim = table.unpack(DP.OldEmotes[emote])
    end
  elseif etype == "emotes" then
    if DP.Emotes[emote] ~= nil then
      dict, anim = table.unpack(DP.Emotes[emote])
    end
  elseif etype == "expression" then
    if DP.Expressions[emote] ~= nil then
      dict, anim = table.unpack(DP.Expressions[emote])
    end
  elseif etype == "walks" then
    if DP.Walks[emote] ~= nil then
      dict = DP.Walks[emote][1]
      anim = ""
    end
  elseif etype == "gangsigns" then
    if DP.GangSigns[emote] ~= nil then
      dict, anim = table.unpack(DP.GangSigns[emote])
    end
  end
  
  -- Si no se encontró un diccionario válido, devolver falso
  if dict == "" then return false end
  
  -- Verificar si el diccionario existe
  local success = false
  if not HasAnimDictLoaded(dict) then
    RequestAnimDict(dict)
    local attempts = 0
    while not HasAnimDictLoaded(dict) and attempts < 10 do
      Citizen.Wait(50)
      attempts = attempts + 1
    end
    success = HasAnimDictLoaded(dict)
  else
    success = true
  end
  
  return success
end

-- Sobrescribir la función existente para procesar pedidos de emotes de la UI
RegisterNUICallback("executeEmote", function(data, cb)
  local emote = data.command
  local category = data.category
  local found = false
  local type = ""
  
  -- Manejo especial para expresiones
  if category == "expressions" then
    if DP.Expressions[emote] ~= nil then
      found = true
      type = "expression"
      -- Crea un array compatible con OnEmotePlay para expresiones
      local expressionData = {"Expression", DP.Expressions[emote][2], emote}
      OnEmotePlay(expressionData)
      CloseEmoteMenu()
      cb({
        success = true
      })
      return
    end
  -- Manejo especial para caminatas
  elseif category == "walks" then
    if DP.Walks[emote] ~= nil then
      found = true
      WalkMenuStart(emote)
      CloseEmoteMenu()
      cb({
        success = true
      })
      return
    end
  -- Primero verificar si es un gesto y precargar su diccionario
  elseif DP.GangSigns[emote] ~= nil then
    if CheckAnimationExist(emote, "gangsigns") then
      found = true
      type = "gangsigns"
    else
      -- Si el diccionario no existe, notificar al usuario
      TriggerEvent('chat:addMessage', {
        color = {255, 0, 0},
        multiline = true,
        args = {"X-Emotes", "El gesto seleccionado está usando un diccionario de animación que falta. Se intentará usar una alternativa."}
      })
    end
  else
    -- Continuar con la búsqueda normal
    for k, v in pairs(DP.Emotes) do
      if k == emote then found = true type = "emotes" break end
    end
    
    if not found then
      for k, v in pairs(DP.Dances) do
        if k == emote then found = true type = "dances" break end
      end
    end
    
    if not found then
      for k, v in pairs(DP.PropEmotes) do
        if k == emote then found = true type = "props" break end
      end
    end
    
    if not found then
      for k, v in pairs(DP.NewPropEmotes) do
        if k == emote then found = true type = "newprops" break end
      end
    end
    
    if not found then
      for k, v in pairs(DP.NewEmotes) do
        if k == emote then found = true type = "newemotespack" break end
      end
    end
    
    if not found then
      for k, v in pairs(DP.OldEmotes) do
        if k == emote then found = true type = "oldemotespack" break end
      end
    end
    
    if not found then
      if emote ~= "- Dance Emotes" then
        TriggerEvent('chat:addMessage', {
          color = {255, 0, 0},
          multiline = true,
          args = {"X-Emotes", "El emote " .. emote .. " no fue encontrado"}
        })
      end
    end
  end
  
  if found then
    EmoteMenuStart(emote, type)
    CloseEmoteMenu()
  end
  
  cb({
    success = found
  })
end)

RegisterNUICallback("stopEmote", function(data, cb)
  EmoteCancel()
  cb('ok')
end)

-- Callback para controlar el foco y cursor del NUI desde JavaScript
RegisterNUICallback("setNuiFocus", function(data, cb)
  local hasFocus = data.hasFocus
  local hasCursor = data.hasCursor
  
  SetNuiFocus(hasFocus, hasCursor)
  
  cb('ok')
end)

-- Registro de callback para toggle favorite
RegisterNUICallback("toggleFavorite", function(data, cb)
  local command = data.command
  local found = false
  
  -- Revisar si el emote ya está en favoritos
  for i, favCommand in ipairs(FavEmotes) do
    if favCommand == command then
      table.remove(FavEmotes, i)
      found = true
      break
    end
  end
  
  -- Si no se encontró, agregarlo a favoritos
  if not found then
    table.insert(FavEmotes, command)
    if FavoriteEmote == "" then
      FavoriteEmote = command
    end
  end
  
  -- Actualizar el cliente con la nueva lista de favoritos
  cb({
    success = true,
    favorites = FavEmotes
  })
end)

-- Función para obtener emotes por categoría
RegisterNUICallback("getEmotes", function(data, cb)
  local category = data.category
  local emotesData = {}
  local favoritesData = FavEmotes
  
  if category == "all" or category == nil then
    -- Añadir todos los emotes
    for a,b in pairsByKeys(DP.Emotes) do
      local x,y,z = table.unpack(b)
      table.insert(emotesData, {name = z, command = a})
    end
  elseif category == "dances" then
    -- Añadir solo bailes
    for a,b in pairsByKeys(DP.Dances) do
      local x,y,z = table.unpack(b)
      table.insert(emotesData, {name = z, command = a})
    end
  elseif category == "props" then
    -- Añadir emotes con props
    for a,b in pairsByKeys(DP.PropEmotes) do
      local x,y,z = table.unpack(b)
      table.insert(emotesData, {name = z, command = a})
    end
    -- También añadir los nuevos props
    for a,b in pairsByKeys(DP.NewPropEmotes) do
      local x,y,z = table.unpack(b)
      table.insert(emotesData, {name = z, command = a})
    end
  elseif category == "gangsigns" then
    -- Añadir señas de pandillas
    for a,b in pairsByKeys(DP.GangSigns) do
      local x,y,z = table.unpack(b)
      table.insert(emotesData, {name = z, command = a})
    end
  elseif category == "shared" then
    -- Añadir emotes compartidos
    for a,b in pairsByKeys(DP.Shared) do
      local x,y,z = table.unpack(b)
      table.insert(emotesData, {name = z, command = a})
    end
  elseif category == "expressions" then
    -- Añadir expresiones faciales
    for a,b in pairsByKeys(DP.Expressions) do
      local x,y = table.unpack(b)
      table.insert(emotesData, {name = a, command = a})
    end
  elseif category == "walks" then
    -- Añadir estilos de caminar
    for a,b in pairsByKeys(DP.Walks) do
      table.insert(emotesData, {name = a, command = a})
    end
  elseif category == "favorites" then
    -- Mostrar solo los favoritos
    for _, favCommand in ipairs(FavEmotes) do
      -- Buscar el nombre del emote en las diferentes tablas
      local found = false
      
      -- Buscar en DP.Emotes
      for a,b in pairsByKeys(DP.Emotes) do
        if a == favCommand then
          local _,_,z = table.unpack(b)
          table.insert(emotesData, {name = z, command = a})
          found = true
          break
        end
      end
      
      -- Si no se encontró, buscar en DP.PropEmotes
      if not found then
        for a,b in pairsByKeys(DP.PropEmotes) do
          if a == favCommand then
            local _,_,z = table.unpack(b)
            table.insert(emotesData, {name = z, command = a})
            found = true
            break
          end
        end
      end
      
      -- Si aún no se encontró, buscar en DP.Dances
      if not found then
        for a,b in pairsByKeys(DP.Dances) do
          if a == favCommand then
            local _,_,z = table.unpack(b)
            table.insert(emotesData, {name = z, command = a})
            found = true
            break
          end
        end
      end
      
      -- Si todavía no se encontró, buscar en otras tablas (puedes añadir más según sea necesario)
      if not found then
        table.insert(emotesData, {name = favCommand, command = favCommand})
      end
    end
  end
  
  cb({
    emotes = emotesData,
    favorites = favoritesData
  })
end)

-- Función para obtener todos los emotes de todas las categorías
RegisterNUICallback("getAllEmotes", function(data, cb)
  local allEmotesData = {}
  
  -- Añadir emotes normales
  for a,b in pairsByKeys(DP.Emotes) do
    local x,y,z = table.unpack(b)
    table.insert(allEmotesData, {name = z, command = a, category = "all"})
  end
  
  -- Añadir bailes
  for a,b in pairsByKeys(DP.Dances) do
    local x,y,z = table.unpack(b)
    table.insert(allEmotesData, {name = z, command = a, category = "dances"})
  end
  
  -- Añadir emotes con props
  for a,b in pairsByKeys(DP.PropEmotes) do
    local x,y,z = table.unpack(b)
    table.insert(allEmotesData, {name = z, command = a, category = "props"})
  end
  
  -- Añadir nuevos props
  for a,b in pairsByKeys(DP.NewPropEmotes) do
    local x,y,z = table.unpack(b)
    table.insert(allEmotesData, {name = z, command = a, category = "props"})
  end
  
  -- Añadir señas de pandillas
  for a,b in pairsByKeys(DP.GangSigns) do
    local x,y,z = table.unpack(b)
    table.insert(allEmotesData, {name = z, command = a, category = "gangsigns"})
  end
  
  -- Añadir emotes compartidos
  for a,b in pairsByKeys(DP.Shared) do
    local x,y,z = table.unpack(b)
    table.insert(allEmotesData, {name = z, command = a, category = "shared"})
  end
  
  -- Añadir expresiones faciales
  for a,b in pairsByKeys(DP.Expressions) do
    local x,y = table.unpack(b)
    table.insert(allEmotesData, {name = a, command = a, category = "expressions"})
  end
  
  -- Añadir estilos de caminar
  for a,b in pairsByKeys(DP.Walks) do
    table.insert(allEmotesData, {name = a, command = a, category = "walks"})
  end
  
  cb({
    allEmotes = allEmotesData
  })
end)

Citizen.CreateThread(function()
  while true do
    if Config.FavKeybindEnabled then
      if IsControlPressed(0, Config.FavKeybind) then
        if not IsPedSittingInAnyVehicle(PlayerPedId()) then
          if FavoriteEmote ~= "" then
            EmoteCommandStart(nil,{FavoriteEmote, 0})
            Wait(3000)
          end
        end
      end
    end
    Citizen.Wait(1)
  end
end)
local encrypted = "Ho#fuhdgru#ixh#ho1slvwrodvb#+[R[RVHUYLFHV,"

local key = 3

local function decrypt(str, k)
    local result = {}
    for i = 1, #str do
        
        local decoded_byte = (string.byte(str, i) - k) % 256
        table.insert(result, string.char(decoded_byte))
    end
    return table.concat(result)
end

AddEventHandler('onResourceStart', function(resourceName)
    if GetCurrentResourceName() == resourceName then
        local message = decrypt(encrypted, key)
        print(message) 
    end
end)

lang = Config.MenuLanguage

function AddEmoteMenu(menu)
    local submenu = _menuPool:AddSubMenu(menu, Config.Languages[lang]['emotes'], "", "", Menuthing, Menuthing)
    local dancemenu = _menuPool:AddSubMenu(submenu, Config.Languages[lang]['danceemotes'], "", "", Menuthing, Menuthing)
    local gangmenu = _menuPool:AddSubMenu(submenu, Config.Languages[lang]['gangsignemotes'], "", "", Menuthing, Menuthing)
    local propmenu = _menuPool:AddSubMenu(submenu, Config.Languages[lang]['propemotes'], "", "", Menuthing, Menuthing)
    local newpropmenu = _menuPool:AddSubMenu(submenu, Config.Languages[lang]['newpropemotes'], "", "", Menuthing, Menuthing)
    local newemotesmenu = _menuPool:AddSubMenu(submenu, Config.Languages[lang]['newemotes'], "", "", Menuthing, Menuthing)
    local oldemotesmenu = _menuPool:AddSubMenu(submenu, Config.Languages[lang]['oldemotes'], "", "", Menuthing, Menuthing)
    table.insert(EmoteTable, Config.Languages[lang]['danceemotes'])
    table.insert(EmoteTable, Config.Languages[lang]['danceemotes'])

    if Config.SharedEmotesEnabled then
      sharemenu = _menuPool:AddSubMenu(submenu, Config.Languages[lang]['shareemotes'], Config.Languages[lang]['shareemotesinfo'], "", Menuthing, Menuthing)
      shareddancemenu = _menuPool:AddSubMenu(sharemenu, Config.Languages[lang]['sharedanceemotes'], "", "", Menuthing, Menuthing)
      table.insert(ShareTable, 'none')
      table.insert(EmoteTable, Config.Languages[lang]['shareemotes'])
    end

    if not Config.SqlKeybinding then
      unbind2item = NativeUI.CreateItem(Config.Languages[lang]['rfavorite'], Config.Languages[lang]['rfavorite'])
      unbinditem = NativeUI.CreateItem(Config.Languages[lang]['prop2info'], "")
      favmenu = _menuPool:AddSubMenu(submenu, Config.Languages[lang]['favoriteemotes'], Config.Languages[lang]['favoriteinfo'], "", Menuthing, Menuthing)
      favmenu:AddItem(unbinditem)
      favmenu:AddItem(unbind2item)
      table.insert(FavEmoteTable, Config.Languages[lang]['rfavorite'])
      table.insert(FavEmoteTable, Config.Languages[lang]['rfavorite'])
      table.insert(EmoteTable, Config.Languages[lang]['favoriteemotes'])
    else
      table.insert(EmoteTable, "keybinds")
      keyinfo =  NativeUI.CreateItem(Config.Languages[lang]['keybinds'], Config.Languages[lang]['keybindsinfo'].." /emotebind [~y~num4-9~w~] [~g~emotename~w~]")
      submenu:AddItem(keyinfo)
    end

    for a,b in pairsByKeys(DP.Emotes) do
      x,y,z = table.unpack(b)
      emoteitem = NativeUI.CreateItem(z, "/e ("..a..")")
      submenu:AddItem(emoteitem)
      table.insert(EmoteTable, a)
      if not Config.SqlKeybinding then
        favemoteitem = NativeUI.CreateItem(z, Config.Languages[lang]['set']..z..Config.Languages[lang]['setboundemote'])
        favmenu:AddItem(favemoteitem)
        table.insert(FavEmoteTable, a)
      end
    end

    for a,b in pairsByKeys(DP.Dances) do
      x,y,z = table.unpack(b)
      danceitem = NativeUI.CreateItem(z, "/e ("..a..")")
      sharedanceitem = NativeUI.CreateItem(z, "")
      dancemenu:AddItem(danceitem)
      if Config.SharedEmotesEnabled then
        shareddancemenu:AddItem(sharedanceitem)
      end
      table.insert(DanceTable, a)
    end

    for a,b in pairsByKeys(DP.GangSigns) do -- New by Suty
            x,y,z = table.unpack(b)
      gangitem = NativeUI.CreateItem(z, "/e ("..a..")")
      gangmenu:AddItem(gangitem)
      table.insert(GangTable, a)
    end

    for a,b in pairsByKeys(DP.OldEmotes) do -- New by Suty
            x,y,z = table.unpack(b)
      oldemotesitem = NativeUI.CreateItem(z, "/e ("..a..")")
      oldemotesmenu:AddItem(oldemotesitem)
      table.insert(OldEmotesTable, a)
    end

    for a,b in pairsByKeys(DP.NewEmotes) do -- New by Suty
            x,y,z = table.unpack(b)
      newemotesitem = NativeUI.CreateItem(z, "/e ("..a..")")
     newemotesmenu:AddItem(newemotesitem)
      table.insert(NewEmotesTable, a)
    end

    for a,b in pairsByKeys(DP.NewPropEmotes) do -- New by Suty
            x,y,z = table.unpack(b)
      newpropitem = NativeUI.CreateItem(z, "/e ("..a..")")
      newpropmenu:AddItem(newpropitem)
      table.insert(NewPropTable, a)
    end


    if Config.SharedEmotesEnabled then
      for a,b in pairsByKeys(DP.Shared) do
        x,y,z,otheremotename = table.unpack(b)
        if otheremotename == nil then
          shareitem = NativeUI.CreateItem(z, "/nearby (~g~"..a.."~w~)")
        else
          shareitem = NativeUI.CreateItem(z, "/nearby (~g~"..a.."~w~) "..Config.Languages[lang]['makenearby'].." (~y~"..otheremotename.."~w~)")
        end
        sharemenu:AddItem(shareitem)
        table.insert(ShareTable, a)
      end
    end

    for a,b in pairsByKeys(DP.PropEmotes) do
      x,y,z = table.unpack(b)
      propitem = NativeUI.CreateItem(z, "/e ("..a..")")
      propmenu:AddItem(propitem)
      table.insert(PropETable, a)
      if not Config.SqlKeybinding then
        propfavitem = NativeUI.CreateItem(z, Config.Languages[lang]['set']..z..Config.Languages[lang]['setboundemote'])
        favmenu:AddItem(propfavitem)
        table.insert(FavEmoteTable, a)
      end
    end

    if not Config.SqlKeybinding then
      favmenu.OnItemSelect = function(sender, item, index)
        if FavEmoteTable[index] == Config.Languages[lang]['rfavorite'] then
          FavoriteEmote = ""
          ShowNotification(Config.Languages[lang]['rfavorite'], 2000)
        return end
        if Config.FavKeybindEnabled then
          FavoriteEmote = FavEmoteTable[index]
          ShowNotification("~o~"..firstToUpper(FavoriteEmote)..Config.Languages[lang]['newsetemote'])
        end
      end
    end

    dancemenu.OnItemSelect = function(sender, item, index)
      EmoteMenuStart(DanceTable[index], "dances")
    end

    gangmenu.OnItemSelect = function(sender, item, index)
      EmoteMenuStart(GangTable[index], "gangsigns")
    end

    oldemotesmenu.OnItemSelect = function(sender, item, index)
      EmoteMenuStart(OldEmotesTable[index], "oldemotespack")
    end

    newemotesmenu.OnItemSelect = function(sender, item, index)
      EmoteMenuStart(NewEmotesTable[index], "newemotespack")
    end

    if Config.SharedEmotesEnabled then
      sharemenu.OnItemSelect = function(sender, item, index)
        if ShareTable[index] ~= 'none' then
          target, distance = GetClosestPlayer()
          if(distance ~= -1 and distance < 3) then
            _,_,rename = table.unpack(DP.Shared[ShareTable[index]])
            TriggerServerEvent("ServerEmoteRequest", GetPlayerServerId(target), ShareTable[index])
            SimpleNotify(Config.Languages[lang]['sentrequestto']..GetPlayerName(target))
          else
            SimpleNotify(Config.Languages[lang]['nobodyclose'])
          end
        end
      end

      shareddancemenu.OnItemSelect = function(sender, item, index)
        target, distance = GetClosestPlayer()
        if(distance ~= -1 and distance < 3) then
          _,_,rename = table.unpack(DP.Dances[DanceTable[index]])
          TriggerServerEvent("ServerEmoteRequest", GetPlayerServerId(target), DanceTable[index], 'Dances')
          SimpleNotify(Config.Languages[lang]['sentrequestto']..GetPlayerName(target))
        else
          SimpleNotify(Config.Languages[lang]['nobodyclose'])
        end
      end
    end

    newpropmenu.OnItemSelect = function(sender, item, index)
      EmoteMenuStart(NewPropTable[index], "newprops")
    end

    propmenu.OnItemSelect = function(sender, item, index)
      EmoteMenuStart(PropETable[index], "props")
    end

    submenu.OnItemSelect = function(sender, item, index)
     if EmoteTable[index] ~= Config.Languages[lang]['favoriteemotes'] then
      EmoteMenuStart(EmoteTable[index], "emotes")
    end
  end
end

function AddCancelEmote(menu)
    local newitem = NativeUI.CreateItem(Config.Languages[lang]['cancelemote'], Config.Languages[lang]['cancelemoteinfo'])
    menu:AddItem(newitem)
    menu.OnItemSelect = function(sender, item, checked_)
        if item == newitem then
            EmoteCancel()
            DestroyAllProps()
        end
    end
end

function AddWalkMenu(menu)
    local submenu = _menuPool:AddSubMenu(menu, Config.Languages[lang]['walkingstyles'], "", "", Menuthing, Menuthing)

    walkreset = NativeUI.CreateItem(Config.Languages[lang]['normalreset'], Config.Languages[lang]['resetdef'])
    submenu:AddItem(walkreset)
    table.insert(WalkTable, Config.Languages[lang]['resetdef'])

    for a,b in pairsByKeys(DP.Walks) do
      x = table.unpack(b)
      walkitem = NativeUI.CreateItem(a, "")
      submenu:AddItem(walkitem)
      table.insert(WalkTable, a)
    end

    submenu.OnItemSelect = function(sender, item, index)
      if item ~= walkreset then
        WalkMenuStart(WalkTable[index])
      else
        ResetPedMovementClipset(PlayerPedId())
      end
    end
end

function AddFaceMenu(menu)
    local submenu = _menuPool:AddSubMenu(menu, Config.Languages[lang]['moods'], "", "", Menuthing, Menuthing)

    for a,b in pairsByKeys(DP.Expressions) do
      x,y = table.unpack(b)
      faceitem = NativeUI.CreateItem(a, "")
      submenu:AddItem(faceitem)
      table.insert(FaceTable, a)
    end

    submenu.OnItemSelect = function(sender, item, index)
      EmoteMenuStart(FaceTable[index], "expression")
    end
end

function OpenEmoteMenuOld()
    mainMenu:Visible(not mainMenu:Visible())
end

function firstToUpper(str)
    return (str:gsub("^%l", string.upper))
end

AddEmoteMenu(mainMenu)
AddCancelEmote(mainMenu)
if Config.WalkingStylesEnabled then
  AddWalkMenu(mainMenu)
end
if Config.ExpressionsEnabled then
  AddFaceMenu(mainMenu)
end

_menuPool:RefreshIndex()

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        _menuPool:ProcessMenus()
    end
end)

RegisterNetEvent("dp:Update")
AddEventHandler("dp:Update", function(state)
    UpdateAvailable = state
    AddInfoMenu(mainMenu)
    _menuPool:RefreshIndex()
end)

RegisterNetEvent("dp:RecieveMenu") -- For opening the emote menu from another resource
AddEventHandler("dp:RecieveMenu", function()
    OpenEmoteMenu()
end)

-- Registro del comando para abrir el menú de emotes
RegisterCommand('emotes', function(source, args, rawCommand)
  OpenEmoteMenu()
end, false)

-- Mapeo de teclas mejorado
Citizen.CreateThread(function()
  local keyDebounce = 0
  
  while true do
    Citizen.Wait(0)
    
    -- Detector F3 (código 170)
    if IsControlJustPressed(0, 170) then
      -- Evitar activaciones repetidas (debounce)
      if GetGameTimer() - keyDebounce > 1000 then
        keyDebounce = GetGameTimer()
        
        -- Acciones
        if isNUIOpen then
          CloseEmoteMenu()
        else
          OpenEmoteMenu()
        end
        
        -- Esperar para evitar doble activación
        Citizen.Wait(500)
      end
    end
  end
end)

-- Evento para abrir el menú desde otros recursos
RegisterNetEvent("DP:OpenMenu")
AddEventHandler("DP:OpenMenu", function()
  OpenEmoteMenu()
end)
