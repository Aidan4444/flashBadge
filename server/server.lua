RegisterServerEvent('flashBadge:server:checkAcePermission')
AddEventHandler('flashBadge:server:checkAcePermission', function()
    if IsPlayerAceAllowed(source, config.acePermissionName) then
        TriggerClientEvent('flashBadge:client:checkAcePermission', source, true)
    else 
        TriggerClientEvent('flashBadge:client:checkAcePermission', source, false)
    end
end)

function GetVersion()
    local verFile = LoadResourceFile(GetCurrentResourceName(), "version.json")
    local verContent = json.decode(verFile)
    return verContent.fivem.version
end

curVersion = GetVersion()
local updatePath = "Aidan4444/flashBadge"
local resourceName = "Flash Badge ("..GetCurrentResourceName()..")"
function checkVersion(err,response, headers)
    if err == 200 then
        local data = json.decode(response)
        local remoteVersion = data.fivem.version
        local changelog = data.fivem.changelog
        print("^5" .. GetCurrentResourceName() .. "^7: Version check returned "..err..", Local Version: "..curVersion..", Remote Version: "..remoteVersion .. "^7\n")
        if curVersion ~= remoteVersion and tonumber(curVersion) < tonumber(remoteVersion) then
            print("\n--------------------------------------------------------------------------")
            print("\n"..resourceName.." is outdated.\nNewest Version: "..remoteVersion.."\nYour Version: "..curVersion.."\nPlease update it from https://github.com"..updatePath.."")
            print("\nUpdate Changelog:\n"..changelog)
            print("\n--------------------------------------------------------------------------")
            updateAvailable = remoteVersion
        elseif tonumber(curVersion) > tonumber(remoteVersion) then
            print("Your version of "..resourceName.." seems to be higher than the current version.")
        else
            --print(resourceName.." is up to date!")
        end
    else
        print(resourceName .. " Version Check failed, please make sure its updated!")
    end
    
    SetTimeout(3600000, checkVersionHTTPRequest)
end

function checkVersionHTTPRequest()
    PerformHttpRequest("https://raw.githubusercontent.com/"..updatePath.."/master/version.json", checkVersion, "GET")
end

checkVersionHTTPRequest()
