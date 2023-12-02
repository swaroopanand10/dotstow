# The following lines were added by compinstall
zstyle :compinstall filename '$ZDOTDIR/.zshrc'
autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)   #include hidden files as well

# autocompletion with case-insensivity
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' # this will allow to match capital letters and small letters with each other

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

