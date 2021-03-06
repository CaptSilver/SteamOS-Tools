#!/bin/bash

# ensure doctoc is install

pkg_check=$(which doctoc)

if [[ "$pkg_check" == "" ]]; then

	# install base pacakges
	sudo apt-get install npm node
	sudo npm install -g doctoc

	# node does not get installed into the "right" place doctoc wants
	# we need to symblink it

	if [[ ! -f "/usr/bin/node" ]]; then

		sudo ln -s "/usr/bin/nodejs" "/usr/bin/node"

	fi

fi

# set dir
if [[ -d "$HOME/github_repos/SteamOS-Tools.wiki" ]]; then

	dir="$HOME/github_repos/SteamOS-Tools.wiki"

elif [[ -d "$HOME/SteamOS-Tools.wiki" ]]; then

	dir="$HOME/SteamOS-Tools.wiki"

else

	# clone wiki to $HOME and set dir
	cd
	git clone https://github.com/ProfessorKaos64/SteamOS-Tools.wiki.git
	dir="$HOME/SteamOS-Tools.wiki"

fi

# update TOC for a given wiki page
# hard-coded to local DIR on workstation

# update
cd $dir
git pull

clear

# show wiki dir
ls $dir

echo -e "\nUpdate which wiki page?\n"
sleep 1s
read -ep "Choice: " wiki_page

doctoc $wiki_page
git add .
git commit -m "update TOC"
git push origin master
