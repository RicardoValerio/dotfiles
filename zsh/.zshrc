# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="junkfood"


# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

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
    git
    colorize
    extract
    python
    pip
    pep8
    pyenv
    pylint
    brew
    sprunge
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH=$PATH:"/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"
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
alias zshconfig="subl ~/.zshrc"
alias ohmyzshconfig="subl ~/.oh-my-zsh"
#unalias run-help
#autoload run-help
HELPDIR=/usr/local/share/zsh/help

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

###################################################################
#       My aliases
###################################################################

alias RV-LAB="cd ~/RV-LAB"
alias EXCEL_TO_PY_TO_SQL="EX2PY2SQL"


#-------- Global Alias {{{
#------------------------------------------------------
# Automatically Expanding Global Aliases (Tab Key to expand)
# references: http://blog.patshead.com/2012/11/automatically-expaning-zsh-global-aliases---simplified.html
globalias() {
  if [[ $LBUFFER =~ '[A-Z0-9]+$' ]]; then
    zle _expand_alias
    zle expand-word
  fi
  zle self-insert
}
zle -N globalias
bindkey " " globalias                 # space key to expand globalalias
# bindkey "^ " magic-space            # control-space to bypass completion
bindkey "^[[Z" magic-space            # shift-tab to bypass completion
bindkey -M isearch " " magic-space    # normal space during searches


# http://www.zzapper.co.uk/zshtips.html
alias -g EX2PY2SQL='python3 ~/RV-LAB/Excel/excel_to_python_to_SQL_to_db.py \
--excel_filename ~/RV-LAB/Excel/test_file_for_data_entry_automation_2.xlsm \
--sheet_name "Orders" \
--sheet_range "B2:U9995" \
--host_name "localhost" \
--username "root" \
--password "bazinga" \
--database_name "data_entry_automation_dev" \
--table_name "orders" \
--columns "order_id" "order_date" "etc" \'


#}}}
