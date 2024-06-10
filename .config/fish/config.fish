if status is-interactive
# Commands to run in interactive sessions can go here
  function bind_bang
      switch (commandline -t)[-1]
          case "!"
              commandline -t -- $history[1]
              commandline -f repaint
          case "*"
              commandline -i !
      end
  end

  function bind_dollar
      switch (commandline -t)[-1]
          case "!"
              commandline -f backward-delete-char history-token-search-backward
          case "*"
              commandline -i '$'
      end
  end

  function fish_user_key_bindings
      bind ! bind_bang
      bind '$' bind_dollar
  end

  fish_add_path -P ~/.local/bin
  fish_add_path -P ~/go/bin
  fish_add_path -P /opt/homebrew/bin
  fish_add_path -P /Users/bencolegate/google-cloud-sdk/bin
  fish_add_path -P /Applications/Docker.app/Contents/Resources/bin
  fish_add_path -P $HOME/.cargo/bin
  fish_add_path -P $HOME/.cargo/bin

  abbr --add k kubectl
  abbr --add kar kubectl-argo-rollouts
  abbr --add fz "fzf --preview 'bat --style=numbers --color=always {}'"

  set -U fish_greeting
  set fzf_fd_opts --hidden --exclude=.git

  set -Ux GOPATH $HOME/go
  set -Ux GO111MODULE on
  set -Ux DEFAULT_USER bencolegate 
  set -Ux ANSIBLE_VAULT_PASSWORD_FILE $HOME/.vault_pass
  set -Ux NVM_DIR $HOME/.nvm

  git-town completions fish | source
  kubectl completion fish | source
  starship init fish | source
  kubectl argo rollouts completion fish | source
  zoxide init fish | source
  fzf --fish | source
  neofetch --ascii $HOME/.jp-ascii.txt
end


if status is-interactive
  and not set -q TMUX
      exec tmux
  end
