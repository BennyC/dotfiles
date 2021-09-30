# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/bencolegate/.oh-my-zsh"

ZSH_THEME="typewritten/typewritten"
ZSH_DISABLE_COMPFIX=true;
source $ZSH/oh-my-zsh.sh

EDITOR=nvim

plugins=(git dotenv osx wd)

export TERM="xterm-256color"

unset LSCOLORS
export CLICOLOR=1
export CLICOLOR_FORCE=1

alias aws='docker run --rm -ti -v ~/.aws:/root/.aws -v $(pwd):/aws amazon/aws-cli'
alias vim="nvim"
alias sail='[ -f sail ] && bash sail || bash vendor/bin/sail'

function wttr() {
  curl "wttr.in/$1?u"
}

export DEFAULT_USER="bencolegate"
export GOPATH=~/go
export GO111MODULE=on
export PATH=$GOPATH:$PATH

if [ "$TMUX" = "" ]; then tmux; fi

