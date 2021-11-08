# ----- PATHS -----

# GOPATH
export GOPATH=$HOME/go

# BIN PATHS
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$GOPATH/bin
export PATH=/usr/local/sbin:$PATH

# ZSH RELATED PATHS
export ZSH="/Users/spaniernathan/.oh-my-zsh"

# NVM
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# ----- ZSH CONFIG -----

# Themes: https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="gianu"

CASE_SENSITIVE="false" # Case sensitive auto-completion
DISABLE_AUTO_UPDATE="false" # Bi-weekly auto-update checks
DISABLE_UPDATE_PROMPT="true" # Automatically update without prompting
# export UPDATE_ZSH_DAYS=13 # How often to auto-update (in days)
DISABLE_MAGIC_FUNCTIONS="false" # Set to true if pasting URLs and other text is messed up
DISABLE_LS_COLORS="false" # Disable colors in ls
DISABLE_AUTO_TITLE="false" # Disable auto-setting terminal title
ENABLE_CORRECTION="false" # Command auto-correction
COMPLETION_WAITING_DOTS="true" # Display red dots whilst waiting for completion

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

HIST_STAMPS="dd/mm/yyyy" # History timestamp formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"

plugins=(
    git
    kubectl
    docker-compose
    docker
    gitignore
    golang
    colorize
    zsh-syntax-highlighting
    zsh-autosuggestions
    colored-man-pages
)

source $ZSH/oh-my-zsh.sh



# ----- User configuration -----

# export MANPATH="/usr/local/man:$MANPATH"

# export LANG=en_US.UTF-8

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nano'
else
  export EDITOR='nano'
fi



# ----- ALIAS -----

alias zshconfig="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"
alias gcmsgs="git commit -S -m"

