config = {
    useESX = false, -- If you are using this script for an ESX server set this to true, if not leave it at false
    ESXJobs = { -- Add your law enforcement jobs for ESX
        'police',
        'swat',
        'fbi',
    },

    acePermissionName = 'flashBadge', -- Example for config: add_ace group.leo "flashBadge" allow

    useCommand = true, -- If enabled will allow you to do a command (specified in commandName) to flash your badge
    commandName = 'badge', -- The name of the command used to flash your badge
    commandSuggestion = true, -- Puts suggestion in chat for the command
    commandErrorMessage = 'You are not a law enforcement officer!', -- Message to show to people who try to do the command but don't have the permissions

    useKeybind = true, -- If enabled will allow you to use a keybind to flash your badge (keybind is customizable in the GTA V keybinds setting menu)
    keybind = 'g', -- Starting keybind (each client can customize their own keybind in the GTA V keybinds menu)

    propName = 'prop_fib_badge', -- The name of the badge prop
}
