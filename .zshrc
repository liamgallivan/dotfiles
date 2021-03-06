# Path to your oh-my-zsh installation.
export ZSH=/Users/Liam/.oh-my-zsh
export GOROOT=/usr/local/go


# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded. 
 ZSH_THEME="bira"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"
# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"
# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=7

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.  # The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd" # HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH="/usr/local/Cellar/vim/7.4.488/bin:/usr/local/go/bin:/usr/local/heroku/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin:/usr/local/apache-maven-3.3.3/bin:/users/Liam/Downloads/appengine-java-sdk-1.9.27/bin:/users/Liam/Downloads/go_appengine:/Applications/VLC.app/contents/MacOS"
export MANPATH="/usr/local/man:$MANPATH"
export GOPATH="/Users/Liam/gowork"
export GOBIN=$GOPATH/bin
source $ZSH/oh-my-zsh.sh
export PATH=$GOPATH:$GOBIN:$PATH

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

#API KEYS
#
export RIOTDEVKEY="4ba1aaa1-fb46-46ac-a154-2ecb4f71e98e"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
# Tmux
alias tmls="tmux list-sessions"
alias tmas="tmux attach-session -t"
export TERM='screen-256color'
alias vim='/usr/local/Cellar/vim/7.4.488/bin/vim'

alias subl="sublime"
alias cd..="cd .."
alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias grum="git pull --rebase upstream master"
alias gpum="git pull upstream master"
alias grom="git pull --rebase origin master"
alias gpom="git pull origin master"
alias gpo="git push origin"
alias gco="git checkout"

alias accel="cd /Users/Liam/code/cpp/accelCppExercises"

# The next line updates PATH for the Google Cloud SDK.
source '/Users/Liam/google-cloud/google-cloud-sdk/path.zsh.inc'

# The next line enables shell command completion for gcloud.
source '/Users/Liam/google-cloud/google-cloud-sdk/completion.zsh.inc'
alias idle=idle3.5
alias python=python3.5
alias tl=task list
alias ta=task add
