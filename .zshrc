export TERM="xterm-256color"

EDITOR=nvim

export DEFAULT_USER="bencolegate"
export GOPATH=~/go
export GO111MODULE=on

prompt_context(){}

bindkey '^ ' autosuggest-accept

alias vim="nvim"
alias wtf="say `cat /dev/urandom | env LC_CTYPE=C tr -cd 'a-f' | head -c 10000`"
alias todo="todo.sh"
function wttr() {
  curl "wttr.in/$1?u"
}

eval "$(starship init zsh)"

plugins=(
  git wd composer zsh-autosuggestions
)

if [ "$TMUX" = "" ]; then tmux; fi

export PATH=~/.composer/vendor/bin:~/go/bin:$PATH
