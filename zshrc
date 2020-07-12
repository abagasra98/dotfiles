# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/abdulbagasra/.oh-my-zsh"

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME=""

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git z zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration
export TERM="xterm-256color"
export EDITOR='nvim'
export SAVEHIST=1000000000
export HISTSIZE=100000
export HISTTIMEFORMAT="[%F %T] "

setopt SHARE_HISTORY
setopt EXTENDED_HISTORY
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS

alias gitZip="git archive HEAD -o ${PWD##*/}.zip"
alias vi=nvim

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
  autoload -Uz compinit
  compinit
fi

# TODO: Enable once pure prompt works correctly with tmux
# if [ "$TMUX" = "" ]; then tmux; fi

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
autoload -U promptinit; promptinit
prompt pure
