ZSH_THEME=""
ZSH_DISABLE_COMPFIX=true;
EDITOR=nvim
plugins=(git dotenv osx wd kubectl kubectx)

export ZSH="/Users/bencolegate/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

export TERM="xterm-256color"

unset LSCOLORS
export CLICOLOR=1
export CLICOLOR_FORCE=1

function wttr() {
  curl "wttr.in/$1?u"
}

# Pinched from Junaid
function sshJustPark() {
    podName=$(kubectl get pods | grep '^\justpark' | grep -v 'justpark-web' | grep -o '^[^ ]*');
    if [ "$podName" = '' ]; then
        echo "Pod not running";
    else
        echo "SSHing to $podName";
        kubectl exec -it ${podName} -c php-dev -- /bin/bash;
    fi
}


# Aliases
alias aws='docker run --rm -ti -v ~/.aws:/root/.aws -v $(pwd):/aws amazon/aws-cli'
alias vim="nvim"
alias sail='[ -f sail ] && bash sail || bash vendor/bin/sail'
alias kgp="kubectl get pods"
alias kgpc="kubectl get pods -o jsonpath=\"{.items[*].spec.containers[*].image}\""
alias sjp='sshJustPark'

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
