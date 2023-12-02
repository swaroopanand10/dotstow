#
# ~/.bashrc
#
#SETTING VI MODE ON AND REMAPPING KEYBINDING <Esc> to jk and kj

set -o vi
bind '"jk":vi-movement-mode'
bind '"kj":vi-movement-mode'


### "bat" as manpager
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
bind 'set completion-ignore-case on' # for case insensitive tab completion

### setting up fzf-tab-completion for bash
source /usr/share/fzf-tab-completion/bash/fzf-bash-completion.sh
bind -x '"\t": fzf_bash_completion'

# ShowInstallerIsoInfo() {
#     local file=/usr/lib/endeavouros-release
#     if [ -r $file ] ; then
#         cat $file
#     else
#         echo "Sorry, installer ISO info is not available." >&2
#     fi
# }

source ~/.config/zsh/alias.sh
source ~/.config/zsh/function.sh

# lfcd () {
#     tmp="$(mktemp -uq)"
#     trap 'rm -f $tmp >/dev/null 2>&1' HUP INT QUIT TERM PWR EXIT
#     lf -last-dir-path="$tmp" "$@"
#     if [ -f "$tmp" ]; then
#         dir="$(cat "$tmp")"
#         [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
#     fi
# }

# didn't understood these 4 things
# [[ "$(whoami)" = "root" ]] && return
# [[ -z "$FUNCNEST" ]] && export FUNCNEST=100          # limits recursive functions, see 'man bash'
#
# # If not running interactively, don't do anything
# [[ $- != *i* ]] && return
# [[ -f ~/.welcome_screen ]] && . ~/.welcome_screen



## Use the up and down arrow keys for finding a command in history
## (you can write some initial letters of the command first).
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

# PS1 customizations - 
PS1=" \[\e[1;32m\]\w \[\e[1;31m\]\[\e[0m\] "

export VISUAL=nvim
export EDITOR="$VISUAL"
# clear shortcut
bind -m vi-command 'Control-l: clear-screen'
bind -m vi-insert 'Control-l: clear-screen'

# path variable for go
export PATH=$PATH:/usr/local/go/bin
eval "$(starship init bash)"
