## Shell integratoins

eval "$(starship init zsh)"
eval "$(zoxide init --cmd cd zsh)" # zoxide won't work without it

# Now with new fzf update, the bindings present in ./fzfkeybinding.zsh is already loaded in binary, so to load them from binary this command is used, but I don't need this as I already have them in ./fzfkeybinding.zsh
# eval "$(fzf --zsh)"
