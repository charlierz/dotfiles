if status is-interactive
    fish_config theme choose "Dracula"
    fish_vi_key_bindings
    eval (zellij setup --generate-auto-start fish | string collect)
end

set -g fish_greeting

set -gx EDITOR nvim
set -gx VISUAL "$EDITOR"

fzf --fish | source
zoxide init fish | source

alias g="lazygit"
alias e="yazi"
alias j="zellij"
alias v="nvim"

if test (uname -s) = "Linux"
    fish_add_path /usr/local/go/bin
    fish_add_path /home/charlierz/.local/share/pnpm
end
