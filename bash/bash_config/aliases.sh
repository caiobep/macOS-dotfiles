# ------- Aliases ----------
# be nice
alias please=sudo

# navigation
alias dev="cd ~/Developer"
alias desk="cd ~/Desktop"

# handy things to have
alias ll="ls -lahG"

# Wow such git
alias such=git
alias very=git
alias wow='git status'

# Shortcuts
alias .='cd ..'
alias ..='cd ../../'
alias desktop='cd ~/Desktop'
alias documents='cd ~/Documents'
alias volumes='cd ~/../../Volumes && ls'
alias quit="killall Terminal"

# Lazy Aliases
alias github='cd ~/GitHub'
alias drive='cd ~/Google\ Drive/'
alias vbox-start='VBoxManage startvm'
alias vbox-off='VBoxManage controlvm "$1" poweroff --soft'
alias sayp='say -v luciana' # Say in Portuguese(my mother language :P)

# System aliases
alias airplaneOn="m wifi off && m bluetooth disable"
alias airplaneOff="m wifi on && m bluetooth enable"
alias myip='curl ip.appspot.com'
alias cleanupDS="find . -type f -name '*.DS_Store' -ls -delete"
alias finderShowHidden='defaults write com.apple.finder ShowAllFiles TRUE'
alias finderHideHidden='defaults write com.apple.finder ShowAllFiles FALSE'


# GIT STUFF
# TJ Holowaychuk's git aliases
alias gd="git diff | atom"
alias ga="git add"
alias gbd="git branch -D"
alias gst="git status"
alias gca="git commit -a -m"
alias gm="git merge --no-ff"
alias gpt="git push --tags"
alias gp="git push"
alias grh="git reset --hard"
alias gri="git rebase -i"
alias gb="git branch"
alias gcob="git checkout -b"
alias gco="git checkout"
alias gba="git branch -a"
alias gcp="git cherry-pick"
alias gl="git log --pretty='format:%Cgreen%h%Creset %an - %s' --graph"
alias gpom="git pull origin master"
alias gcd='cd "`git rev-parse --show-toplevel`"'

# Undo a `git push`
alias undopush="git push -f origin HEAD^:master"
