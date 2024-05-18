# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel10k/powerlevel10k"
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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

# Which plugins would you like to load?~
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=( 
    git
    wd
    zsh-autosuggestions
    zsh-syntax-highlighting
    zsh-completions
)

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
#HELM
export PYTHONPATH=/Users/rahul/documents/work/helm/ironkey/undercroft:/Users/rahul/documents/work/helm/ironkey/minion
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ga="git add"
alias gc="git commit -S"
alias gp="git push"
alias gpu="git pull"
alias gpo="git push origin head && open raycast://confetti"
alias gph="git push gitlab head"
alias gch="git checkout"

alias rails-start="rails s -b 0.0.0.0 -p 4000"
alias helm-source="source .venv/bin/activate"
# alias helm-start="python manage.py runserver 0.0.0.0:8000 --verbosity 0"
alias helm-docker-start="docker compose -f ./docker/development/docker-compose-web.yml -f ./docker/development/docker-compose-db.yml up -d --build"
alias helm-start='(
  source .venv/bin/activate
  docker compose -f ./docker/development/docker-compose-web.yml -f ./docker/development/docker-compose-db.yml up -d --build
  cd ./undercroft
  python manage.py runserver 0.0.0.0:8000 --verbosity 0
)'
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="$HOME/.rbenv/bin:$PATH"

eval "$(rbenv init -)"

# bun completions
[ -s "/Users/rahul/.bun/_bun" ] && source "/Users/rahul/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# procol-backend
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

# Define your folder paths
MAIN_FOLDER="/Users/rahul/documents/work/Speechify/site"
NEXT_FOLDER="$MAIN_FOLDER/next"
PAYLOAD_FOLDER="$MAIN_FOLDER/payload"


alias spf='
  # Go to the target folder
  # cd "$MAIN_FOLDER" &&

  # Open VS Code in the target folder
  # code . &&

osascript <<EOF
  tell application "iTerm"
    if (count of windows) = 0 then
      create window with default profile
    end if
    tell current window
      create tab with default profile
      tell current session
        write text "cd $MAIN_FOLDER && code ."
      end tell
      create tab with default profile
      tell current session
        write text "cd $TARGET_DIR/$NEXT_FOLDER && npm run dev"
      end tell
      create tab with default profile
      tell current session
        write text "cd $TARGET_DIR/$PAYLOAD_FOLDER && npm run dev"
      end tell
    end tell
  end tell
EOF

  open http://localhost:3000
  open http://localhost:3001
'

