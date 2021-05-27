RegisterNetEvent('flashBadge:client:animation')
AddEventHandler('flashBadge:client:animation', function()
    Citizen.CreateThread(function()
        local ped = PlayerPedId()
        local coords = GetEntityCoords(ped)
        local badgeProp = CreateObject(GetHashKey(config.propName), coords.x, coords.y, coords.z + 0.2, true, true, true)
        local boneIndex = GetPedBoneIndex(ped, 28422)
        
        AttachEntityToEntity(badgeProp, ped, boneIndex, 0.065, 0.029, -0.035, 80.0, -1.90, 75.0, true, true, false, true, 1, true)
        RequestAnimDict('paper_1_rcm_alt1-9')
        TaskPlayAnim(ped, 'paper_1_rcm_alt1-9', 'player_one_dual-9', 8.0, -8, 10.0, 49, 0, 0, 0, 0)
        Citizen.Wait(3000)
        ClearPedSecondaryTask(ped)
        DeleteObject(badgeProp)
    end)
end)

Citizen.CreateThread(function()
    if config.commandSuggestion and config.useCommand then 
        TriggerEvent('chat:addSuggestion', '/' .. config.commandName, 'Flashes your badge.')
    end
end)

RegisterCommand(config.commandName, function()
    if config.useCommand then 
        if leoAcePerm then
            TriggerEvent('flashBadge:client:animation')
        else
            TriggerEvent('chat:addMessage', {
                color = {255, 92, 92},
                multiline = true,
                args = {'[Error]', config.commandErrorMessage}
            })
        end
    end
end, false)

RegisterKeyMapping('+flashBadge', 'Flash Badge', 'keyboard', config.keybind)
RegisterCommand('+flashBadge', function()
    if config.useKeybind then 
        if leoAcePerm then 
            TriggerEvent('flashBadge:client:animation')        
        end 
    end 
end, false)

TriggerServerEvent('flashBadge:server:checkAcePermission')
RegisterNetEvent('flashBadge:client:checkAcePermission')
AddEventHandler('flashBadge:client:checkAcePermission', function(isAllowed)
    if isAllowed then 
        leoAcePerm = true 
    else 
        leoAcePerm = false 
    end
end)
