# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.config/zsh/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="eastwood"
#ZSH_THEME="pygmalion"
#ZSH_THEME="simple"
ZSH_THEME="gallois"
#ZSH_THEME="muse"
#ZSH_THEME="agnoster"

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

export EDITOR='nvim'
source <(fzf --zsh)

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias off='sudo shutdown -P now' #quick way to shut down PC
alias pubip='curl https://ipinfo.io/ip' #get PC's public ip
alias matlab='xhost +SI:localuser:root && sudo /usr/local/MATLAB/R2022a/bin/matlab' #launch matlab as root
alias poweropt='sudo ~/powertop_cmds.sh' #Fix bad parts in powertop output
alias psme='ps -ef | grep $USER --color=always '
alias vpn='sudo openconnect sds.oregonstate.edu'
alias leave="sudo pkill -u $USER"
alias vim='nvim_wrapper'
alias nvim='nvim_wrapper'
alias vf="fzf --print0 | xargs -0 -o vim"
alias lz="lazygit"

function please() {
  sudo $(fc -ln -1)
}

function ffind {
    find / -name $1 2>/dev/null
}

# Install Ruby Gems to ~/gems
export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
alias tmux="TERM=screen-256color-bce tmux"

export CURRENT_THEME_PATH="$HOME/.cache/current_theme"


function nvim_wrapper() {
    NVIM_BINARY="/usr/bin/nvim"
    NVIM_PIPES="/tmp/nvim-pipes"

    CURRENT_THEME=$(cat $CURRENT_THEME_PATH)

    PIPE_HASH=$(echo "$(pwd)_${RANDOM}" | base64)
    [[ -d $NVIM_PIPES ]] || mkdir $NVIM_PIPES
    $NVIM_BINARY -c "Theme $CURRENT_THEME" --listen $NVIM_PIPES/$PIPE_HASH.pipe "$@"

}

function switch_theme() {
    #continue only if it's either light or dark
    if [[ "$1" = "light" || "$1" = "dark" ]]; then
        # Switching alacritty theme. the alacritty dir must contain alacritty_light and alacritty_dark
        cp ~/.config/alacritty/alacritty_$1.toml ~/.config/alacritty/alacritty.toml
        echo "Alacritty theme switched to $1"

        # Switching nvim theme
        NVIM_PIPES="/tmp/nvim-pipes"
        # Update nvim theme in all listening nvim servers
        [[ -d $NVIM_PIPES ]] || mkdir $NVIM_PIPES
        ls $NVIM_PIPES | xargs -I {} sh -c "nvim --server $NVIM_PIPES/{} --remote-send ':Theme $1<CR>'" 
        echo "Nvim theme switched to $1"

        echo $1 > $CURRENT_THEME_PATH
    else
        echo "Usage: switch_theme [light|dark]"
    fi

}

#[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH=$PATH:/home/eytan/.spicetify
export PATH=$PATH:/usr/local/bin/localstack
export PATH=$PATH:/usr/bin/terraform
