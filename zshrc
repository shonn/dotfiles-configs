# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="frisk"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git colored-man)

source $ZSH/oh-my-zsh.sh

export PLAY_HOME=/opt/play-2.2.1
export GRAILS_HOME=/opt/grails-2.2.3
export PATH=$PATH:/home/ssn/.rvm/gems/ruby-2.0.0-p247/bin:/home/ssn/.rvm/gems/ruby-2.0.0-p247@global/bin:/home/ssn/.rvm/rubies/ruby-2.0.0-p247/bin:/home/ssn/.rvm/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/core_perl:$GRAILS_HOME/bin:$PLAY_HOME

# disable touchpad
synclient TouchpadOff=1
 
#load aliases
if [ -f ~/.aliases ]; then
	. ~/.aliases
fi

#use vim keybindings
set -o vi

#ls into every cd call
cd () {
    builtin cd "$*";
    ls --color=auto --color=auto;
}

#pretty cat
function pygmentize_cat {
  for arg in "$@"; do
    pygmentize -g "${arg}" 2> /dev/null || /bin/cat "${arg}"
  done
}
command -v pygmentize > /dev/null && alias pcat=pygmentize_cat

function spectrum_ls() {          
  for code in {000..255}; do
    print -P -- "$code: %F{$code}$ZSH_SPECTRUM_TEXT%f"
      done
}

#reverse search
bindkey "^R" history-incremental-search-backward
feh --bg-scale /home/ssn/Objects/mountain.png
xset -dpms; xset s off
