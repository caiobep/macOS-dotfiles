 #!/usr/bin/env bash

 # Restore backup script
function restoreBash() {
	echo 'Restoring your Bash profile'
	cp -rf ./bash/.bash_config ~/.bash_config
	cp ./bash/bash_profile ~/.bash_profile
}

function restoreAtom() {
	echo 'Restoring your Atom config'
	apm install ./enviroment/Atomfile
}

function restoreHomebrew() {
	echo 'Restoring your Homebrew packages'
	brew bundle ./enviroment/Brewfile
}

function restoreHyperjs() {
	echo 'Restore hyper packages'
	cp ./enviroment/hyperterm.json ~/.hyper_plugins/package.json
	cp ~/enviroment/.hyper.js ~/.hyper.js
	cp ~/enviroment/.hyper.css ~/.hyper.css
}

function restore() {
	restoreBash
	restoreHomebrew
	restoreAtom
	restoreHyperjs
}

restore
