<img src="https://github.com/mdeguzis/SteamOS-Tools/raw/master/artwork/SteamOS-Tools.png" width=100%/>

# SteamOS-Tools
[![Build Status](https://travis-ci.org/mdeguzis/SteamOS-Tools.svg?branch=master)](https://travis-ci.org/mdeguzis/SteamOS-Tools)
***
 <img src="https://github.com/mdeguzis/SteamOS-Tools/raw/master/artwork/icons/alert.png"/> **Latest News**:  

**NOTICE:**  
2018-11-14: Public keys have been renewed. Please re-run configure-repos.sh as so:

```
./configure-repos.sh --remove
./configure-repos.sh
```

**IMPORTANT**

Please do not use the steamos-mega-downloader.sh tool for preparing drives until a bug is worked out in USB preparation. For whatever reason, the installer will not pick up the USB drive. However, the standard method Valve reccomends (unzip, such as via file-roller) is fine. 

***
SteamOS Tools is a 3rd-party repository with the mission to enhance various aspects of SteamOS from the "stock" experience. SteamOS-Tools contains different various utilities to enhance SteamOS, hosted Debian packages for many programs, and more. The purpose of each folder is listed below in the "Contents" section. The [wiki page](https://github.com/mdeguzis/SteamOS-Tools/wiki) is full of info. Please start there when looking for information.

Be sure to check out the [Upcoming features](https://github.com/mdeguzis/SteamOS-Tools/wiki/Development-and-Features#upcoming-planned-features) subsection on the wiki for the latest developments! For those of you that wish to contribute, suggest, or otherwise correct code, please first read the [Development and Feautres](https://github.com/mdeguzis/SteamOS-Tools/wiki/Development-and-Features) wiki page. Code corrections, additions, and all other suggestions can be made to the [issus](https://github.com/mdeguzis/SteamOS-Tools/issues) tracker.

All operations are tested against official Valve releases _only_.

# Latest Updates, News, and discussions
***

For the latest change details, please see the commits page and [libregeek.org](http://www.libregeek.org/category/steamos-tools/) for overall change details. You can also follow development, and engage in discussion by joining the IRC channel `#libregeek`
located under the irc.freenode.net network. The main op is me "mdeguzis".

While I know folks I run into will send me friend requestes at time on Steam, please don't be offended if I do not accept it. I try to keep my list small and tidy to minimize notification clutter, keep general discussions to IRC, and to keep organized with discussions. I typically only add folks I have regular contact with, and will even prune the list at times. Thank you for understanding.

# Warning
***

Please take time to read the [disclaimer](https://github.com/mdeguzis/SteamOS-Tools/blob/brewmaster/disclaimer.md). Please also understand the default branch of this GitHub repository is for **SteamOS Brewmaster**.

# Wiki and FAQ
***

Please refer to the [wiki](https://github.com/mdeguzis/SteamOS-Tools/wiki), located to your right in this repository for all supplemental information and instructions. A direct link to the FAQ is [here](https://github.com/mdeguzis/SteamOS-Tools/wiki/FAQ). Information for installations, as well as much more, is located within. If there is a page missing, or information you wish me to add, please let me know via an issues ticket.

For SteamOS-specific help (aside from SteamOS-Tools), I do ask you visit and review the community SteamOS wiki at [Valve's GitHub page](https://github.com/ValveSoftware/SteamOS/wiki) for all other topics. This is one area that I greatly appreciate help and support with. Please considering signing up or anonymously contributing to it. 

# Hosted Packages
***

There is now a Debian personal repository hosted at packages.libregeek.org. SteamOS-Tools currently has two different repositories, "brewmaster" and "brewmaster_beta". "brewmaster_beta" is a testing release where packages will gradually accumulate on a weekly or monthly basis. These packages are deemed to not yet be "mature," enough for the main repository. When it appears that they may be ready for use, the package(s) will be synced to the main repository.

**WARNING:**  
There is no easy way to opt out of the beta repo. Removing the package will delete configuration files pertaining to the beta repository, but the packages you have installed from it will be "orphaned." The best course of action, if you choose this route, is to [purge and reinstall](https://github.com/mdeguzis/SteamOS-Tools/wiki/Purging-and-Reinstalling-a-Package) any pacakges you have installed via the beta repository.

* [Package listings](http://packages.libregeek.org/SteamOS-Tools/package_lists/)
* [SteamoS-Tools repository](https://github.com/mdeguzis/SteamOS-Tools/wiki/SteamOS-Tools-Repository)
* [LibreGeek-Packaging GitHub](https://github.com/mdeguzis/LibreGeek-Packaging)
* [SteamOS-Tools site/package statistics](http://steamos-tools-stats.libregeek.org)

### Adding the SteamOS-Tools Repository

The below commands will fetch and install the GPG keyring for Librgeek, and install the desired repository configuration. The base option (--default, assumed) does include Debian repositories, and package pinning to avoid conflicts. The remove optoion below will erase all libregeek repository configurations. If you find yourself in a bind, or packaging mistake snuck in, try using the `--repair` option to reset your configuration.

For more see the relevant [wiki entry](https://github.com/mdeguzis/SteamOS-Tools/wiki/Desktop-Software).

```
./configure-repos.sh [--default|--repair|--enable-testing|--remove-testing|--remove]
```

### Update your package lists
```
sudo apt-get update
```

# SteamOS-Tools Usage / Installation
***

Please make sure you have enabled desktop mode (Settings > Interface > Enable access to the Linux Desktop), and have set your password for the dekstop user with `passwd`.

To clone this repository to your local computer, you will need the `git` software package to clone the repository. The command is included below in the first line below if you do not know it. Updating is very important for fixes and new features.

```
sudo apt-get install git
git clone https://github.com/mdeguzis/SteamOS-Tools
cd SteamOS-Tools/
```

Normal script execution, sans arguments, goes a little bit like:

```
./script-name.sh
```

# Updating
***

Be aware that any packages installed via the Libregeek package repository will be upgraded during the silent unattended upgrades process in SteamOS (Settings > System) when a new version is available in the package pool. These updates, like Valve's upgrades, are processed on shutdown. Therefore, if you see "SteamOS update available" and Valve has made no announcement of a new OS release (beta or non-beta), you can likely assume you have updates for SteamOS-Tools / LibreGeek.

_Please_ regulary check for updates to SteamOS-Tools. To update your local copy of files for this repository:

```
cd SteamOS-Tools/
git pull
```

# Contents
***

More information on utilities and tools can be found in the [wiki](https://github.com/mdeguzis/SteamOS-Tools/wiki)

* artwork - Banners and various images/artwork for SteamOS.
* archive - previous scripts and tools that are retired
* cfgs/ - various configuration files, including package lists for Debian software installations.
* docs/ - Various documentation. Previously hosted script documentation that is now on teh wiki.
* ext-game-installers/ - Game installers for games outside Steam (e.g. GZDoom).
* extra/ - Various extra scripts
* game-fixes/ - A location to store some small deployable fixes for games.
* launchers/ - Script launchers for various software
* scriptmodules/ - Plugable bash modules / routines for any of the below scripts. Scripts for packages and more.
* utilities/ - various scripts to handle small parts of the SteamOS-Tools repository (plugable objects), build scripts, and standalone tools for use.
* README.md - This file.
* configure-repos.sh - the main utility script to configure software repositories
* AUTHORS.md - Contributions, attributions, and more
* LICENCE.md - License for this repository. Share all the things! ZOMGOMGBBQHELICOPTERZ
* contributing.md - Guidelines for repository contributions
* desktop-software.sh - script to install custom and bulk Debian desktop software packages, as well as special additional packages/utilities, such as gameplay recording, "web apps," and more. Please see the readme file in docs/ for the full listing of options.
* disclaimer.md - safety warnings for this repository.

# Video Demonstrations / Tutorials
***

* [SteamOS-Tools introductory video](https://www.youtube.com/watch?v=P9A-CwVHk7E&feature=youtu.be)
* [Troubleshooting adding sources](https://youtu.be/UWxHbJMVv5E)
* [Libregeek on Youtube](https://www.youtube.com/channel/UCkAs7k_xDG0pBD82T1YiD6g)
* For all other videos and tutorials, please see the [Videos and Tutorials](https://github.com/mdeguzis/SteamOS-Tools/wiki/Videos-and-Tutorials) wiki page

# Branches
There are two main branches at the moment. Alchemist is no longer supported

`master`  
Current version of SteamOS (Brewmaster). Default branch for repository.  

`testing-b`    
Branch where some new scripts are made for Brewmaster. Larger alterations to existing ones implemented, and more for brewmaster.  

Alternate releases and projects can be seen in the dropdown for the available branches.

# Requests / Suggestions / Contributions
***

Please submit any issues / suggestions to the issues tracker on the right hand side of this page
or any corrections (with justification) as a Pull Request. Have a cool script or method to enhance SteamOS? Send it over! Your name will be added to the script header and the AUTHORS.md file. Another great way to help, is to contribute and help solve anything reported as an [issue](https://github.com/mdeguzis/SteamOS-Tools/issues). I will also take requests for packages _not_ found within Debian repositories, or those that require extra work to implement/add to SteamOS.

I welcome any and all contributions as well, suggestions, and more. Please see the TODO list in the [Development and Features](https://github.com/mdeguzis/SteamOS-Tools/wiki/Development-and-Features#planned-features--to-do-list) section of the wiki. Feel free to add items to the list, but be sure to tag/link your username if you could. This particular areas is more aimed at those who wish to contribute ideas / code. Otherwise, please make a suggestion for a feature/software in an issues ticket. You can see a list of the amazing folks who have contributed to SteamOS-Tools, in the _AUTHORS.md_ file.

# Troubleshooting
***

If you have  trouble, please refer to the [Troubleshooting](https://github.com/mdeguzis/SteamOS-Tools/wiki/Troubleshooting#debugging-steamos-tools-package-issues) wiki page, before anything else.

You can run `bash utilties/steamos-systeminfo-tool` from within the SteamOS-Tools repository directory and attach the resultant zip file for any reported issue. This will collect system information to help better resolve your problem. Most scripts in the main folder of the repository write stdout and stderr to `log.txt` in the current directory after completion. Please check this file before submitting any issues or pull requests. For all issues, 

# Donations
***

If you wish to support the work here, hosting costs for packages, and more, you can do so monthly at [Patreon.com](https://www.patreon.com/user?u=60834&ty=h), or make a one time donation over at http://www.libregeek.org/. You can see a list of the amazing folks who have contributed to SteamOS-Tools, in the _AUTHORS.md_ file. If I missed adding you, please let me know! This will greatly help my future plans to increase bandwidth for the entire domain.
