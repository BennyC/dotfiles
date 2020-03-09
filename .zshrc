# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

plugins=(
  git wd composer zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

export DEFAULT_USER="bencolegate"
export PATH=~/.composer/vendor/bin:~/go/bin:$PATH
export GOPATH=~/go
export GO111MODULE=on
prompt_context(){}

alias wtf="say `cat /dev/urandom | env LC_CTYPE=C tr -cd 'a-f' | head -c 10000`"

bindkey '^ ' autosuggest-accept

eval "$(starship init zsh)"
alias todo="todo.sh"

function wttr() {
  curl "wttr.in/$1?u&format=%l:%20%c+%t%20%w%20%p"
}

if [ "$TMUX" = "" ]; then tmux; fi

