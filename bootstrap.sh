#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

git pull origin master;

function keepBashProfile() {
	# Changing Default BashProfile
	mv ~/.bash_profile ~/.bash_profileOld
	cp ./.bash_profile ~/
}

function deleteBashProfile(){
	rm -rf ~/.bash_profile
	cp ./.bash_profile ~/
}

function moveDotFiles(){
	cp ./.bash_config ~/
	cp ./.gitconfig ~/
	bash .macos
}

function installBrewfile(){
	bash ./install.sh
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	keepBashProfile;
	moveDotFiles;
	installBrewfile;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]];
	then
		deleteBashProfile;
		moveDotFiles;
		installBrewfile;
	else
		keepBashProfile;
		moveDotFiles;
		installBrewfile;
	fi;
fi;

unset deleteBashProfile;
unset keepBashProfile;
unset moveDotFiles;
unset installBrewfile;
