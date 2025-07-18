if test (uname -s) = "Linux"
    # --- linux settings ---
    fish_add_path /usr/local/go/bin
    fish_add_path /home/charlierz/.local/share/pnpm
else if test (uname -s) = "Darwin"
    # --- macOS settings ---
    fish_add_path "$HOME/Development/flutter"
    fish_add_path "$HOME/Development/flutter/bin"
    fish_add_path "$HOME/.pub-cache/bin"
    fish_add_path "$HOME/bin/aws-accounts"
    fish_add_path "$HOME/bin/robq-tools"
    fish_add_path "$HOME/.local/bin" # For aider
    fish_add_path "$HOME/Library/Application Support/fnm"
    fish_add_path /opt/homebrew/bin
    set -gx AFFINIDI_SERVICE_TS /.../affinidi-service-ts
    set -gx GENESIS_LIBS /.../libs
    set -gx AWS_PROFILE affinidi-elements-dev-dev-portal-bff:Developer
    set -gx XDG_CONFIG_HOME "$HOME/.config" # For lazygit config location
    alias pj 'npx projen'
    alias bd './bin/dev.js'
    alias br './bin/run.js'
end

if status is-interactive
    fish_config theme choose "Dracula"
    fish_vi_key_bindings
end

set -g fish_greeting # disable fish greeting

set -gx EDITOR nvim
set -gx VISUAL "$EDITOR"

fzf --fish | source
zoxide init fish | source

alias g="lazygit"
alias e="yazi"
alias v="nvim"

