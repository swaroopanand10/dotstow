## Some plugins
# zsh-autosuggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh

eval "$(starship init zsh)"
# sourcing the zsh-tab-completion plugin to autocomplete by fzf
source /usr/share/zsh/plugins/fzf-tab-bin-git/fzf-tab.plugin.zsh

# source /usr/share/zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh --increasing startup time
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
eval "$(zoxide init zsh)"


# ZVM_INIT_MODE='sourcing'
#sourcing zsh vi mode file
# source /usr/share/zsh/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh
