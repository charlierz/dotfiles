if test (uname -s) = "Linux"
    # --- linux settings ---
    fish_add_path /usr/local/go/bin
    fish_add_path /home/charlierz/bin
    fish_add_path /home/charlierz/.local/share/pnpm
    fish_add_path /home/charlierz/.local/share/fnm
    # set -x PATH /usr/local/cuda/bin $PATH
    # set -x LD_LIBRARY_PATH /usr/local/cuda/lib64 $LD_LIBRARY_PATH
    # set -x CUDA_HOME /usr/local/cuda
    fish_add_path /home/charlierz/.opencode/bin
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
    fish_add_path "$HOME/.fvm_flutter/bin"
    fish_add_path "$HOME/fvm/default/bin"
    fish_add_path /Users/carlos/.opencode/bin
    set -gx AFFINIDI_SERVICE_TS /.../affinidi-service-ts
    set -gx GENESIS_LIBS /.../libs
    set -gx AWS_PROFILE affinidi-elements-dev-dev-portal-bff:Developer
    set -gx XDG_CONFIG_HOME "$HOME/.config" # For lazygit config location
    set -gx PATH $PATH /Users/carlos/.lmstudio/bin # For LM Studio CLI
    alias pj 'npx projen'
    alias bd './bin/dev.js'
    alias br './bin/run.js'
end

if status is-interactive
    fish_config theme choose "Dracula"
    fish_vi_key_bindings
    bind --mode insert \cf forward-char # accept autosuggestion with ctrl+f
end

set -g fish_greeting # disable fish greeting

set -gx EDITOR nvim
set -gx VISUAL "$EDITOR"

fzf --fish | source
zoxide init fish | source

alias g="lazygit"
alias e="yazi"
alias v="nvim"

function ci
    cd /home/charlierz/ComfyImage
    if not set -q VIRTUAL_ENV
        . venv/bin/activate.fish
    end
    python main.py --output-directory /mnt/workspace/output --port 8188
end

function cv
    cd /home/charlierz/ComfyVideo
    if not set -q VIRTUAL_ENV
        . venv/bin/activate.fish
    end
    python main.py --output-directory /mnt/workspace/output --port 8189
end

function iw
    cd /home/charlierz/dev/nunif
    if not set -q VIRTUAL_ENV
        . venv/bin/activate.fish
    end
    python -m iw3.gui
end

function activate
    . venv/bin/activate.fish
end
