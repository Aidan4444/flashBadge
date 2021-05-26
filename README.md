[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]

<!-- PROJECT LOGO -->
<br />
<p align="center">
  <h3 align="center">flashBadge</h3>

  <p align="center">
    A FiveM Standalone script that allows you to flash your badge.
    <br />
    <a href="https://github.com/Aidan4444/radioPanicButton/issues">Report Bug</a>
    ·
    <a href="https://github.com/Aidan4444/radioPanicButton/issues">Request Feature</a>
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


## Showcase
[Showcase Video](https://cdn.discordapp.com/attachments/831462056229994497/846989705085845504/radioPanicButton.mp4)

![image|690x29, 100%](https://cdn.discordapp.com/attachments/831462056229994497/846989150535417876/8026304cff389a4a54ca5dcfc92911f6.png)

![image|333x163, 100%](https://cdn.discordapp.com/attachments/831462056229994497/846989127601356800/a6135ec06fd504aacbb2e48ca9ca224e.png)


## Example Config
```lua
config = {
    acePermissionName = 'flashBadge', -- Example for config: add_ace group.leo "flashBadge" allow

    useCommand = true, -- If enabled will allow you to do a command (specified in commandName) to flash your badge
    commandName = 'badge', -- The name of the command used to flash your badge
    commandSuggestion = true, -- Puts suggestion in chat for the command
    commandErrorMessage = 'You are not a law enforcement officer!', -- Message to show to people who try to do the command but don't have the permissions

    useKeybind = true, -- If enabled will allow you to use a keybind to flash your badge (keybind is customizable in the GTA V keybinds setting menu)
    keybind = 'g', -- Starting keybind (each client can customize their own keybind in the GTA V keybinds menu)

    propName = 'prop_fib_badge' -- The name of the badge prop
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

FiveM Post   - [Radio Panic Button](https://forum.cfx.re/u/aidan_ogg)






<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/Aidan4444/radioPanicButton.svg?style=for-the-badge
[contributors-url]: https://github.com/Aidan4444/radioPanicButton/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/Aidan4444/radioPanicButton.svg?style=for-the-badge
[forks-url]: https://github.com/Aidan4444/radioPanicButton/network/members
[stars-shield]: https://img.shields.io/github/stars/Aidan4444/radioPanicButton.svg?style=for-the-badge
[stars-url]: https://github.com/Aidan4444/radioPanicButton/stargazers
[issues-shield]: https://img.shields.io/github/issues/Aidan4444/radioPanicButton.svg?style=for-the-badge
[issues-url]: https://github.com/Aidan4444/radioPanicButton/issues
