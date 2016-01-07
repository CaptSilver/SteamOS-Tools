<img src="https://github.com/ProfessorKaos64/SteamOS-Tools/raw/brewmaster/artwork/SteamOS-Tools.png" width=100%/>

# SteamOS-Tools

Tools and scripts for SteamOS. Be sure to check out the [Upcoming features](https://github.com/ProfessorKaos64/SteamOS-Tools/wiki/Development-and-Features#upcoming-planned-features) subsection on the wiki for the latest developments! For those of you that wish to contribute, suggest, or otherwise correct code, please first read the [Development and Feautres](https://github.com/ProfessorKaos64/SteamOS-Tools/wiki/Development-and-Features) wiki page. Code corrections, additions, and all other suggestions can be made to the [issus](https://github.com/ProfessorKaos64/SteamOS-Tools/issues) tracker.

All operations are tested against official Valve releases _only_.

For the latest change details, please see the commits page and changelog.md file for overall change details.

# Warning

Please take time to read the [disclaimer](https://github.com/ProfessorKaos64/SteamOS-Tools/blob/alchemist/disclaimer.md). Please also understand the default branch of this GitHub repository is for **SteamOS Brewmaster**.

# Wiki and FAQ

Please refer to the [wiki](https://github.com/ProfessorKaos64/SteamOS-Tools/wiki), located to your right in this repository for all supplemental information and instructions. A direct link to the FAQ is [here](https://github.com/ProfessorKaos64/SteamOS-Tools/wiki/FAQ). Information for installations, as well as much more, is located within. If there is a page missing, or information you wish me to add, please let me know via an issues ticket.

For SteamOS-specific help (aside from SteamOS-Tools), I do ask you visit and review the community SteamOS wiki at [Valve's GitHub page](https://github.com/ValveSoftware/SteamOS/wiki) for all other topics. This is one area that I greatly appreciate help and support with. Please considering signing up or anonymously contributing to it. 

# Hosted packages

There is now a Debian personal repository hosted at packages.libregeek.org. Be sure to check out the "hosted packages" section below! The wiki entry also contains repository information if you should wish to add the repository manually.

* [SteamoS-Tools repository](https://github.com/ProfessorKaos64/SteamOS-Tools/wiki/SteamOS-Tools-Repository)
* [SteamOS-Tools-Packaging GitHub](https://github.com/ProfessorKaos64/SteamOS-Tools-Packaging)
* [SteamOS-Tools site/package statistics](http://steamos-tools-stats.libregeek.org)

# Usage / Installation

Please make sure you have enabled desktop mode (Settings > Interface > Enable access to the Linux desktop), and aset your password for the dekstop user with `passwd`.

To clone this repository to your local computer, you will need the `git` software package to clone the repository. The command is included below in the first line below if you do not know it. Updating is very important for fixes and new features.

```
sudo apt-get install git
git clone https://github.com/ProfessorKaos64/SteamOS-Tools
cd SteamOS-Tools/
```

Normal script execution, sans arguments, goes a little bit like:

```
./script-name.sh
```

# Updating
Be aware that any pacakges installed via the Libregeek package repository will be upgraded during the silent unattended upgrades process in SteamOS (Settings > System) when a new version is available in the package pool. This updates, like Debian and Valve's upgrades, are processed on shutdown.

_Please_ regulary check for updates to SteamOS-Tools. To update your local copy of files for this repository:
```
cd SteamOS-Tools/
git pull
```

## Contents
* artwork - Banners and various images/artwork for SteamOS.
* cfgs/ - various configuration files, including package lists for Debian software installations.
* docs/ - Various documentation. Previously hosted script documentation that is now on teh wiki.
* ext-game-installers/ - Game installers for games outside Steam (e.g. GZDoom).
* extra/ - Various extra scripts
* game-fixes/ - A location to store some small deployable fixes for games.
* launchers/ - Script launchers for various software
* scriptmodules/ - Plugable bash modules / routines for any of the below scripts. Scripts for packages and more.
* utilities/ - various scripts to handle small parts of the SteamOS-Tools repository (plugable objects), build scripts, and standalone tools for use.
* README.md - This file.
* AUTHORS.md - Contributions, attributions, and more
* LICENCE.md - License for this repository. Share all the things! ZOMGOMGBBQHELICOPTERZ
* add-debian-repos.sh - adds debian repositories for installing Debian software.
* changelog.md - Changes made to repository and tools
* contributing.md - Guidelines for repository contributions
* desktop-software.sh - script to install custom and bulk Debian desktop software packages, as well as special additional packages/utilities, such as gameplay recording, "web apps," and more. Please see the readme file in docs/ for the full listing of options.
* disclaimer.md - safety warnings for this repository.

# Wiki
- In time I hope to maintain a colletion of useful articles or links to Steamcommunity Guides that still work, currate them and other such things*.

# Video demonstrations / tutorials

* [SteamOS-Tools introductory video](https://youtu.be/h-gdPWjZlb4)
* [Libregeek on Youtube](https://www.youtube.com/channel/UCkAs7k_xDG0pBD82T1YiD6g)
* For all other videos and tutorials, please see the [Videos and Tutorials](https://github.com/ProfessorKaos64/SteamOS-Tools/wiki/Videos-and-Tutorials) wiki page

# Branches
There are three main branches at the moment

`alchemist`  
Only contains a modified `add-debian-repos.sh`. Only intended for some legacy package testing right now.  

`brewmaster`  
Brewmaster branch. Default branch for repository.  

`testing-b`    
Branch where some new scripts are made. Larger alterations to existing ones implemented, and more for brewmaster.  

# Pull requests / package requests / suggestions 
Please submit any issues / suggestions to the issues tracker on the right hand side of this page
or any corrections (with justification) as a Pull Request. Have a cool script or method to enhance SteamOS? Send it over! Your name will be added to the script header and the AUTHORS.md file. I will also take requests for packages _not_ found within Debian Jessie, or those that require extra work to work/install.

# Troubleshooting
Most scripts in the main folder of the repository write stdout and stderr to `log.txt` in the current directory after completion. Please check this file before submitting any issues or pull requests.

# Donations
If you wish to support the work here, hosting costs for packages, and more, you can do so monthly at [Patreon.com](https://www.patreon.com/user?u=60834&ty=h), or make a one time donation over at http://www.libregeek.org/. You can see a list of the amazing folks who have contributed to SteamOS-Tools, in the AUTHORS.md file.
