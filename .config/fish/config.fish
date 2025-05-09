if status is-interactive
    fish_config theme choose "Dracula"
end

set -g fish_greeting

export EDITOR=nvim
export VISUAL="$EDITOR"

fzf --fish | source
zoxide init fish | source

abbr -a g lazygit
abbr -a e yazi
abbr -a j zellij
abbr -a v nvim
