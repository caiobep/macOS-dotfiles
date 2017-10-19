#!/usr/bin/env bash

function bashBackup() {
	rm -rf ./bash/;
	mkdir ./bash/;
	echo "Backing up your bash 👴 config"
	cp -rf ~/.bash_config ./bash/bash_config;
	cp ~/.bash_profile ./bash/bash_profile;
}

function brewBackup() {
	echo "Backing your Homebrew 🍺 packages"
	rm "./enviroment/Brewfile"
	brew bundle dump --file="./enviroment/Brewfile";
}

function apmBackup() {
	echo "Backing your Atom ⚛️ packages"
	apm list --installed --bare > ./enviroment/Atomfile;
}

function hyperBackup() {
	echo "Backing your Hyper ▲ packages"
	cp ~/.hyper_plugins/package.json ./enviroment/hyperterm.json
	cp ~/.hyper.* ./enviroment
}

function enviromentBackup() {
	brewBackup
	apmBackup
	hyperBackup
}

function pushChanges() {
	echo "Pushing your changes to GitHub"
	git add .
	git commit -m 'Dotfiles Update'
	git push
	echo "Changes uploaded!"
}

# Backup dotfiles
function backup() {
	echo "Backing up your dotfiles "
	enviromentBackup
	bashBackup
	echo "Done 👍"
}

backup
