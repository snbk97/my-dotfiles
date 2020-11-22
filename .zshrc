# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
PATH=$PATH:/usr/local/bin
export TERM="xterm-256color"
export LC_ALL=en_US.UTF-8
# Path to your oh-my-zsh installation.
export ZSH=/home/sayan/.oh-my-zsh
WORK="/home/sayan/Documents/workbench/"
# ZSH_THEME="spaceship"
ZSH_THEME="lambda/lambda-mod"
# ZSH_THEME="lambda-pure"
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git,
    poetry,
    docker
    )

source $ZSH/oh-my-zsh.sh
source /home/sayan/.zinit/bin/zplugin.zsh

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

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
# Scripts
# screenfetch -D Arch

export PATH=$PATH:/var/lib/snapd/snap/bin
export CHEAT_COLORS=true


# Powerlevel9k
POWERLEVEL9K_COLOR_SCHEME='dark'
POWERLEVEL9K_MODE='awesome-patched'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(vcs battery time)
# POWERLEVEL9K_BATTERY_ICON=$'\u26A1'
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_TIME_FORMAT="%D{%d.%m.%y}"
# enable the vcs segment in general
POWERLEVEL9K_SHOW_CHANGESET=true
# just show the 6 first characters of changeset
POWERLEVEL9K_CHANGESET_HASH_LENGTH=6
POWERLEVEL9K_HIDE_BRANCH_ICON=fasle
POWERLEVEL9K_PROMPT_ON_NEWLINE=true

# Customizing `context` colors for root and non-root users
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="cyan"
POWERLEVEL9K_CONTEXT_ROOT_BACKGROUND="red"
POWERLEVEL9K_CONTEXT_ROOT_FOREGROUND="blue"


## ==== My settings === ##
alias zz="clear"
alias lsg="ls | grep"
alias pod="popd"
alias pud="pushd"
alias ls="lsd"
alias ll="lsd -l"
alias gpustat="cat /sys/bus/pci/devices/0000:01:00.0/power/runtime_status"
alias nv="nordvpn"
alias v="vim"
alias b="byobu"
alias po="poetry"
# alias ii="sudo dnf install -y"
alias glo="git log --pretty=oneline"
alias ga="git add"
alias gc="git commit"
alias gst="git status"
alias gco="git checkout"
alias gd="git diff"
alias gdt="git difftool -Yt meld"

#########################################
#   zplugins                            #
#########################################
# zplugin load marszall87/lambda-pure
# Two regular plugins loaded without tracking.
zplugin light zsh-users/zsh-autosuggestions
zplugin light zdharma/fast-syntax-highlighting

# Plugin history-search-multi-word loaded with tracking.
zplugin load zdharma/history-search-multi-word

### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-rust \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-bin-gem-node

### End of Zinit's installer chunk
