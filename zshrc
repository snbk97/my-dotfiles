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

SPACESHIP_PACKAGE_SHOW=false
SPACESHIP_HG_SHOW=false
SPACESHIP_RUBY_SHOW=false
SPACESHIP_ELM_SHOW=false
SPACESHIP_ELIXIR_SHOW=false
SPACESHIP_RUST_SHOW=false
SPACESHIP_HASKELL_SHOW=false
SPACESHIP_JULIA_SHOW=false
SPACESHIP_GCLOUD_SHOW=false
SPACESHIP_VENV_SHOW=false
SPACESHIP_CONDA_SHOW=false
SPACESHIP_DOTNET_SHOW=false
SPACESHIP_EMBER_SHOW=false
PACESHIP_GRADLE_SHOW=false
SPACESHIP_MAVEN_SHOW=false
SPACESHIP_TERRAFORM_SHOW=false
SPACESHIP_IBMCLOUD_SHOW=false

plugins=(
    git,
    poetry,
    docker
    )

source $ZSH/oh-my-zsh.sh

export PATH=$PATH:/var/lib/snapd/snap/bin
export CHEAT_COLORS=true

SPACESHIP_PACKAGE_SHOW=false
SPACESHIP_HG_SHOW=false
SPACESHIP_RUBY_SHOW=false
SPACESHIP_ELM_SHOW=false
SPACESHIP_ELIXIR_SHOW=false
SPACESHIP_RUST_SHOW=false
SPACESHIP_HASKELL_SHOW=false
SPACESHIP_JULIA_SHOW=false
SPACESHIP_GCLOUD_SHOW=false
SPACESHIP_VENV_SHOW=false
SPACESHIP_CONDA_SHOW=false
SPACESHIP_DOTNET_SHOW=false
SPACESHIP_EMBER_SHOW=false
PACESHIP_GRADLE_SHOW=false
SPACESHIP_MAVEN_SHOW=false
SPACESHIP_TERRAFORM_SHOW=false
SPACESHIP_IBMCLOUD_SHOW=false

plugins=(
  git
  docker
  history-search-multi-word
)

source $ZSH/oh-my-zsh.sh

gglog (){
  git log --graph --pretty=format:'%Cred%h%Creset %an -%C(yellow)%d%Creset %s %Cgreen(%cr)'
}


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
alias bat='upower -i $(upower -e | grep 'BAT') | grep -E "state|to\ full|percentage"'
alias l="lsd"
alias ll="l -l"
alias la="ll -a"
# alias lt='l --tree'
