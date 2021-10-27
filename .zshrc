# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/bencolegate/.oh-my-zsh"
ZSH_THEME=""

ZSH_DISABLE_COMPFIX=true;
source $ZSH/oh-my-zsh.sh

EDITOR=nvim

plugins=(git dotenv osx wd)

export TERM="xterm-256color"

unset LSCOLORS
export CLICOLOR=1
export CLICOLOR_FORCE=1

# Aliases
alias aws='docker run --rm -ti -v ~/.aws:/root/.aws -v $(pwd):/aws amazon/aws-cli'
alias vim="nvim"
alias sail='[ -f sail ] && bash sail || bash vendor/bin/sail'
alias kgp="kubectl get pods"
alias kgpc="kubectl get pods -o jsonpath=\"{.items[*].spec.containers[*].image}\""

function wttr() {
  curl "wttr.in/$1?u"
}

export DEFAULT_USER="bencolegate"
export GOPATH=~/go
export GO111MODULE=on
export PATH=$GOPATH:$PATH
export PATH=$PATH:$(brew --prefix)/opt/python/libexec/bin

if [ "$TMUX" = "" ]; then tmux; fi

fpath=($fpath "/Users/bencolegate/.zfunctions")

# Set typewritten ZSH as a prompt
autoload -U promptinit; promptinit
prompt typewritten

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/bencolegate/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/bencolegate/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/bencolegate/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/bencolegate/google-cloud-sdk/completion.zsh.inc'; fi
