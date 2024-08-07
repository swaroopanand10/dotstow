# The following lines were added by compinstall
# compinit has something to do with completions

# zstyle :compinstall filename '$ZDOTDIR/.zshrc' # don't know what it does
autoload -Uz compinit && compinit # it loads completion and is necessary
# zinit cdreplay -q                              # recommended by zinit to cache completions
# zmodload zsh/complist                          # if this is removed then the menuselect keybinds will not work

_comp_options+=(globdots) # include hidden files in completion menu as well

### Completion customization.
# autocompletion with case-insensivity
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' # this will allow to match capital letters and small letters with each other
# zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath' # this will show preview in 'cd' tab completion with colors in the preview
# zstyle ':completion:*' menu select                                 # don't now what it does
# zstyle ':completion:*' menu no                                     # disables default zsh completion menu (don't know why use this)
# zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}" # not working don't know why
# zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath' # not working and don't need it

# Use vim keys in tab complete menu: (though it is not required as we are not using zsh default completion menu and instead using fzf-tab)
# bindkey -M menuselect 'h' vi-backward-char
# bindkey -M menuselect 'k' vi-up-line-or-history
# bindkey -M menuselect 'l' vi-forward-char
# bindkey -M menuselect 'j' vi-down-line-or-history
