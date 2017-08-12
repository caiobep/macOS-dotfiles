 #!/usr/bin/env bash

 # Restore backup script
function restoreBash() {
	echo 'Restoring your Bash profile'
	cp -rf ./bash/.bash_config ~/.bash_config
	cp ./bash/bash_profile ~/.bash_profile
}

function restoreAtom() {
	apm install ./enviroment/Atomfile
}

function restoreHomebrew() {
	brew bundle ./enviroment/Brewfile
}

function restoreHyperjs() {
	cp ./enviroment/hyperterm.json ~/.hyper_plugins/package.json
	cp ~/enviroment/.hyper.js ~/.hyper.js
	cp ~/enviroment/.hyper.css ~/.hyper.css
}
