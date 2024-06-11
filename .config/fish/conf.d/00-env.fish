set -Ux GOPATH $HOME/go
set -Ux GO111MODULE on
set -Ux DEFAULT_USER bencolegate
set -Ux ANSIBLE_VAULT_PASSWORD_FILE $HOME/.vault_pass
set -Ux NVM_DIR $HOME/.nvm

set -U fish_greeting
set fzf_fd_opts --hidden --exclude=.git
