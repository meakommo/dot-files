# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh


# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerline"


# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

#begin custom entries
screenfetch

#alias commands

#navigation
alias home="cd ~/"
alias la="ls -liah | lolcat"
alias zvim="nvim ~/.zshrc"
alias Y="yaourt | lolcat" 
alias messenger="~/Documents/./caprine-2.8.0-x86_64.AppImage"
alias passphrase="/home/meako/script/passe.sh"
alias gitm="git commit -m"
alias gitid="git config credential.helper store"
alias radio="cvlc -q 'https://www.youtube.com/watch?v=OlDvC8v6o7k'"
alias monstercat="streamlink 'https://www.twitch.tv/monstercat' 720p"
alias vim="nvim"
#alias update="sudo apt update | lolcat"
#alias upgrade="sudo apt upgrade |lolcat"

