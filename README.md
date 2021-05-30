[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![Discord Shield][discord-shield]][discord-invite]

<!-- PROJECT LOGO -->
<br />
<p align="center">
  <h3 align="center">flashBadge</h3>

  <p align="center">
    A FiveM Standalone script that allows you to flash your badge.
    <br />
    <a href="https://github.com/Aidan4444/flashBadge/issues">Report Bug</a>
    ·
    <a href="https://github.com/Aidan4444/flashBadge/issues">Request Feature</a>
  </p>
</p>



<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li><a href="#features">Features</a></li>
    <li><a href="#showcase">Showcase</a></li>
    <li><a href="#example-config">Example Config</a></li>
    <li><a href="#installation">Installation</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>



## Features
* Animation with prop
* Ability to either use a command, keybind, or both
* Each client can customize their keybind
* Fully customizable
* Supports ESX


## Showcase
[Showcase Video](https://streamable.com/av7hoe)

![flashBadgeKeybind|690x32](https://cdn.discordapp.com/attachments/831462056229994497/847384962499870740/flashBadgeKeybind.png)


## Example Config
```lua
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
```


## Installation

1. Download the latest [release](https://github.com/Aidan4444/flashBadge/releases/latest)
2. Rename the resource to just "flashBadge"
3. Configure the [config.lua](https://github.com/Aidan4444/flashBadge/blob/master/config.lua) file 
4. Add to your server.cfg `ensure flashBadge`


## Roadmap

See the [open issues](https://github.com/othneildrew/Best-README-Template/issues) for a list of proposed features (and known issues).


## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request


## Contact

Discord      - [Aidan_ogg#0001](https://discordapp.com/users/705110046563893259)

FiveM Forums - [Aidan_ogg](https://forum.cfx.re/u/aidan_ogg)

FiveM Post   - [Flash Badge](https://forum.cfx.re/t/standalone-release-flash-badge-script/2977049)

[![Discord Banner][discord-banner]][discord-invite]






<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/Aidan4444/flashBadge.svg?style=for-the-badge
[contributors-url]: https://github.com/Aidan4444/flashBadge/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/Aidan4444/flashBadge.svg?style=for-the-badge
[forks-url]: https://github.com/Aidan4444/flashBadge/network/members
[stars-shield]: https://img.shields.io/github/stars/Aidan4444/flashBadge.svg?style=for-the-badge
[stars-url]: https://github.com/Aidan4444/flashBadge/stargazers
[issues-shield]: https://img.shields.io/github/issues/Aidan4444/flashBadge.svg?style=for-the-badge
[issues-url]: https://github.com/Aidan4444/flashBadge/issues
[license-shield]: https://img.shields.io/github/license/Aidan4444/flashBadge.svg?style=for-the-badge
[license-url]: https://github.com/Aidan4444/flashBadge/blob/master/LICENSE
[discord-invite]: https://discord.gg/vxDde5utc5
[discord-shield]: https://discord.com/api/guilds/847541172876607538/widget.png?style=shield
[discord-banner]: https://discord.com/api/guilds/847541172876607538/widget.png?style=banner2
