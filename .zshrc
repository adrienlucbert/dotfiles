# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

export EDITOR=vim

[[ -f $HOME/.zsh_profile ]] && source $HOME/.zsh_profile

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="dracula"
# TERM=xterm

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="false"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#plugins=(
#  git
#)

plugins=(
  zsh-autosuggestions
  git
  docker
)

source $ZSH/oh-my-zsh.sh
source <(kubectl completion zsh)

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

## Some useful alias to make your life easier :)
##

alias vim="nvim"

## ls group directory first
alias lsf="ls --group-directories-first --color=auto"

## ls with color
alias ls='ls --color=auto'

## search package in the repository
alias search="pacman -Qs"

## install package
alias install="sudo pacman -S"

## upgrade package
alias upgrade="sudo pacman -Syyu"

## update package
alias update="sudo pacman -Su"

## remove package
alias remove="sudo pacman -Rns"

## autoremove unneeded dependencies
alias autoremove="sudo pacman -Rns \$(pacman -Qtdq)"

## View and set wallpaper with feh
alias feh-view="feh --scale-down --auto-zoom"
alias feh-set="feh --bg-fill"

## Refresh font cache
alias font-refresh="fc-cache -fv"

## git clone depth 1, who needs to clone full repository if you can clone the top layer only
alias clone="git clone --depth 1"

## merge Xresources, useful for urxvt & rofi theming
alias merge="xrdb ~/.Xresources"

## configure
alias config="/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME"

alias zshconf="vim ~/.zshrc"
alias i3conf="vim ~/.config/i3/config"
alias vimconf="vim ~/init.vim"

## clear screen
alias c="clear"

# locate files or folder by name
alias locate="find . | grep"

# locate files by content
alias locate-content="grep -rnw . -e "

# count lines of code in current directory
alias lines='find . -name "*.c" -or -name "*.cpp" -or -name "*.h" -or -name "*.hpp" -or -name "*.sh" -or -name "*.py" -or -name "*.js" | xargs wc -l'

# make shortcuts
alias makef='make fclean'
alias makec='make clean'
alias maked='make debug'
alias maker='make re'

# git shortcuts
alias gits="git status"
alias gitl="git log"

alias fixbt="pacmd set-card-profile bluez_card.70_BF_92_01_DB_57 a2dp_sink"

alias cp="rsync -az --info=progress2 --no-inc-recursive" 

alias colortest="npx colortest"

# make directory and navigate to it
function mcd() {
    md $1 && cd $1
}

# receive missing gpg key
alias gpgrecv="gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys"

function visum() {
    bash /usr/share/visum/scripts/visum.sh $1 > /dev/null 2>&1
}

alias myip="curl https://api.ipify.org"

alias yayzf="yay -Slq | fzf -m --preview 'cat <(yay -Si {1}) <(yay -Fl {1} | awk \"{print \$2}\")' | xargs -ro  yay -S"
