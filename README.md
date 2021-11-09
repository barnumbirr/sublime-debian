# sublime-debian

Debian packaging file syntax highlighting for Sublime Text.

## Features

Provides syntax highlighting for the following files:

 - `debian/source/format`
 - `debian/source/local-options`
 - `debian/upstream/metadata`
 - `debian/changelog`
 - `debian/compat`
 - `debian/control`
 - `debian/copyright`
 - `debian/*.doc-base`
 - `debian/*.lintian-overrides`
 - `debian/NEWS`
 - `debian/*.templates`
 - `debian/watch`
 - `.dsc`

## Screenshots

Debian `changelog`, `control` and `copyright` files with Sublime Text 3's default `Monokai` color scheme:

<p align="center">
    <a href="https://i.imgur.com/nL14qlN.png" target="_blank"> <img src="https://i.imgur.com/nL14qlN.png" width="32%"/></a>
    <a href="https://i.imgur.com/iG9EMUD.png" target="_blank"> <img src="https://i.imgur.com/iG9EMUD.png" width="32%"/></a>
    <a href="https://i.imgur.com/W1vqFuL.png" target="_blank"> <img src="https://i.imgur.com/W1vqFuL.png" width="32%"/></a>
    <i>Click images to enlarge.</i>
</p>

All files used in these screenshots are part of [Debian's backupppc 4.4.0-2 package](https://salsa.debian.org/debian/backuppc/-/tree/debian/4.4.0-2).

## Installation

### With Package Control

1. [Install Package Control](https://packagecontrol.io/installation)
2. Install [Debian Syntax package](https://packagecontrol.io/packages/Debian%20Syntax)

    | Platform      | Install Command                                                   |
    | --------------| ----------------------------------------------------------------- |
    | OS X          | <kbd>Cmd</kbd> + <kbd>Shift</kbd> + <kbd>P</kbd> → Package Control: Install Package → Debian Syntax  |
    | Linux/Windows | <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>P</kbd> → Package Control: Install Package → Debian Syntax |

3. Reopen all Debian packaging files or restart Sublime Text

### Without Package Control

1. Locate your Sublime Text "Packages" directory and navigate to it

    | Platform | Installation Path                                           |
    | -------- | ----------------------------------------------------------- |
    | Linux    | `~/.config/sublime-text-3/Packages/`                        |
    | OSX      | `~/Library/Application\ Support/Sublime\ Text\ 3/Packages/` |
    | Windows  | `%AppData%\Roaming\Sublime Text 3\Packages`                 |

2. Clone this repository into `Debian Syntax` directory

    ```bash
    git clone git://github.com/barnumbirr/sublime-debian.git 'Debian Syntax'
    ```

## Credit

A heartfelt thank you goes out to the following people for making `sublime-debian` a reality:

 - [braver](https://github.com/braver)
 - [deathaxe](https://github.com/deathaxe)
 - [michaelblyons](https://github.com/michaelblyons)
 - [OdatNurd](https://github.com/OdatNurd)

## License:

```
Copyright 2020-2021 Martin Simon

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```

## Buy me a coffee?

If you feel like buying me a coffee (or a beer?), donations are welcome:

```
BTC : bc1qq04jnuqqavpccfptmddqjkg7cuspy3new4sxq9
DOGE: DRBkryyau5CMxpBzVmrBAjK6dVdMZSBsuS
ETH : 0x2238A11856428b72E80D70Be8666729497059d95
LTC : MQwXsBrArLRHQzwQZAjJPNrxGS1uNDDKX6
```
