# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
#
ZSH_DISABLE_COMPFIX="true"

# Path to your oh-my-zsh installation.
export ZSH="/Users/richardhernandez/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
#POWERLEVEL9K_MODE='nerdfont-complete'
#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir)
#POWERLEVEL9K_PROMPT_ON_NEWLINE=true
#POWERLEVEL9K_DISABLE_RPROMPT=true
#POWERLEVEL9K_TIME_FOREGROUND='021' # Dark blue

#source /usr/local/opt/powerlevel9k/powerlevel9k.zsh-theme

#export PS1=" \e[0;31m[\T]\e[1;36m \W \e[1;32m ~ \e[0;37m"
#export CLICOLOR=1
#export LSCOLORS=ExFxCxDxBxegedabagacad
#export EDITOR='nvim'
#export TERMINAL=alacritty

#set PROMPT='%F{blue}%1~%f %F{cyan}%f'
#PROMPT='%F{blue}%1~%f %F{cyan}$ %f'

#alias ls='ls -GFh'
alias ls='colorls --sd'
alias h='cd ~ && clear'
alias c='clear && clear'
#alias d='cd ~/Desktop && clear'
alias .='cd ..'
alias src='source ~/.bashrc && echo "updated .bashrc"'
alias bp='vim ~/.bashrc'
alias chrome="open -a /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
alias vimrc='nvim ~/.config/nvim/init.vim'
alias vim='nvim'
alias :q='quit || exit'
alias ddg='ddgr'
alias how='howdoi -ac'
alias web='w3m'
alias zrc='vim ~/.zshrc'
alias zsh='clear && source ~/.zshrc'
alias trc='vim ~/.tmux.conf'
alias vimf='nvim -o `fzf`'
alias pfetch='~/pfetch/pfetch'
alias config='/usr/bin/git --git-dir=/Users/richardhernandez/dotfiles --work-tree=/Users/richardhernandez'

function d {
    cd ~/Desktop/$1/$2/$3/$4/$5/$6
}

function ssh353 {
    #$running=vboxmanage showvminfo "md32xu16046vm-vbox616" | grep -c "running (since"
    VBoxManage startvm "md32xu16046vm-vbox616" --type headless
    ssh student@192.168.56.101
    sshpass -f <(printf 'student\n') ssh student@192.168.56.101

}

function close353 {
    VBoxManage controlvm "md32xu16046vm-vbox616" poweroff --type headless
}


function ssh350 {
    VBoxManage startvm "csci350_32bitvm" --type headless
    #ssh student-csci350@127.0.0.1 -p 1350
    sshpass -f <(printf 'student350\n') ssh student-csci350@127.0.0.1 -p 1350
}

function close350 {
    VBoxManage controlvm "csci350_32bitvm" poweroff --type headless
}

function dirs () {
    colorls -d --tree=$1
}

function laravel () {
    docker run -d -p 80:80 docker/code
    #curl -s https://laravel.build/$1 | bash
    #d $1
    ./vendor/bin/sail up
}

function acp  () {
    $1
    git add .
    if [ -z "$1" ] 
    then
        git commit -m "updated"
    else 
        git commit -m "$1"
    fi 
    git push
    clear
    echo "added, commited, & pushed to git"

}

function ta () {
    tmux a -t $1
}

function tn () {
    tmux new -s $1
}

#psql -d d6tnacbo7jff7v -h ec2-75-101-232-85.compute-1.amazonaws.com -p 5432 -U ifwvgifcovullg -w -W e10c89f4a1883bfd724d1515f7782240fa2c8f4effb3bba0db76fe9d43142e97
function db405 {
    PGPASSWORD=e10c89f4a1883bfd724d1515f7782240fa2c8f4effb3bba0db76fe9d43142e97 psql -d d6tnacbo7jff7v -h ec2-75-101-232-85.compute-1.amazonaws.com -p 5432 -U ifwvgifcovullg  -w
}

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-15.0.1.jdk/Contents/Home

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

source $(dirname $(gem which colorls))/tab_complete.sh
source "$HOME/.cargo/env"

neofetch
bindkey -v
