#### Aliases

## ls related
alias ll='lsd -alh'
alias ls='ls --color=auto'
alias l='lsd -l'   # show long listing but no hidden dotfiles except "."

## Tmux related
alias mx='pgrep -vx tmux > /dev/null && \
		tmux new -d -s delete-me && \
		tmux run-shell /usr/share/tmux-resurrect/scripts/restore.sh && \
		tmux kill-session -t delete-me && \
		tmux attach || tmux attach'
alias ms='tmux-sessionizer'
alias tms='tmux source-file ~/.config/tmux/tmux.conf'
alias tmk='tmux kill-server'
# alias mux='pgrep -vxq tmux && tmux new -d -s delete-me && tmux run-shell ~/.tmux/plugins/tmux-resurrect/scripts/restore.sh && tmux kill-session -t delete-me && tmux attach || tmux attach'


## Youtube related
alias yta='yt-dlp -x -f bestaudio'
alias ytv='yt-dlp '
alias yt='ytfzf --url-handler-opts="--ytdl-format=best"'
alias ytt='ytfzf -t -T swayimg-hyprland --url-handler-opts="--ytdl-format=best"'

## LF related
# alias lf='~/.config/lf/lfrun'
# alias lf='~/.config/lf/ub-lfub.sh'
alias lfp='~/.config/lf/script.sh'
alias lfu='~/.config/lf/lfubpp.sh'

## Yazi related
alias ff='yazi'
alias ffa='yazi_cd'

## Others
alias ncm='ncmpcpp'
alias cgrp='grep --color=always -i -n'
alias rgrp='grep --color=always -i -n -r -I'
alias crg='rg --color=always -n --column -S --no-heading'
alias nb='newsboat'
alias wp='warp-cli'
alias bs='bash'
alias cx='chmod +x'
alias hn='hostname'
alias pa='playerctl --list-all | xargs -L1 playerctl pause -p' # will pause all media (exept chrome inactive tabs)
# alias play='mpv --audio-file=<(yt-dlp '$0' -o -) <(yt-dlp '$0' -o -)'

## Emacs
# alias dmi='git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.config/emacs 
# ~/.config/emacs/bin/doom install'
# alias dms='install -D ~/.config/doom/sessions/* ~/.config/emacs/.local/etc/workspaces/'
# alias dmss='cp ~/.config/emacs/.local/etc/workspaces/* ~/.config/doom/sessions/'
# alias dmsb='mkdir /home/swaroop/.config/doom/sessions-bak/$(date +%Y%m%d_%H%M%S) && cp /home/swaroop/.config/doom/sessions/* /home/swaroop/.config/doom/sessions-bak/$(date +%Y%m%d_%H%M%S)'
# alias ked='killall emacs ; emacs --daemon &'


## Nvim
alias sv='sudoedit'
alias v='nvim'
alias dv='NVIM_APPNAME=nvim-def nvim'
alias lv='NVIM_APPNAME=lazyvim nvim'
alias nv='NVIM_APPNAME=nvchad nvim'
alias kv='$HOME/neovim/bin/nvim'

## Stow
alias ste='cd ~/dotstow/ && stow */ -t ~'
alias sta='cd ~/dotstow/ && stow */ -t ~ --adopt'
alias st='cd ~/dotstow/ && stow * -t ~'

## Package searching
alias pke='paru -Q | fzf'  # searching all packages
alias pki='paru -Qe | fzf' # searching installed package
alias pkn='paru -Qn | fzf' # searching only normal package
alias pkr='paru -Qm | fzf' # searching only aur package
alias refc='sudo reflector --country "India,United States," --latest 100 --age 12 --fastest 8 --protocol https --sort rate --save /etc/pacman.d/mirrorlist'
alias mirrbak='sudo cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist_$(date +"%Y-%m-%d_%H:%M:%S")'
alias ref='sudo reflector --latest 100 --fastest 8 --protocol https --age 12 --sort rate --save /etc/pacman.d/mirrorlist'

## Git
alias gcl='git clone'
alias gcm='git commit -m'
alias ga='git add'
alias gp='git push'
alias gs='git status'
alias gl='git log'
alias gd='git diff'
alias lg='lazygit'

## Vivaldi preferences saving
alias vbk='cp $HOME/.config/vivaldi/Default/Preferences $HOME/.config/browser/vivaldi/preferences/Prefernces_$(date +"%Y-%m-%d_%H:%M:%S")'
alias vcp='mkdir -p ~/.config/vivaldi/Default/ && touch ~/.config/vivaldi/Default/Preferences'
alias vrs='cat ${1} > $HOME/.config/vivaldi/Default/Preferences'
alias V_reset='rm -rf .config/vivaldi .cache/vivaldi'

## Networking
alias hta='nmcli device wifi hotspot ssid "swarooplatpot" password anand2002' # start hotspot with these config(will resave config)
alias ht='nmcli con up Hotspot' # for turning on hotspot with already saved hotspot config
alias ncu='nmcli con up' # this is for connecting to already saved connection(provide connection after it)
alias htn='nmcli device wifi hotspot' # give credientials after this to start hotspot with those
alias wfl='nmcli device wifi list'
alias wfs='nmcli device wifi rescan'
alias wfc='nmcli device wifi connect'
alias ndc='nmcli device connect' # connect to any device
alias ndd='nmcli device disconnect' # disconnect go connected device 
alias nno='nmcli networking on' # enabling networking
alias nnf='nmcli networking off' # disabling networking
alias nwo='nmcli radio wifi on' # enabling wifi
alias nwf='nmcli radio wifi off' # disabling wifi
alias ncs='nmcli connection show' # show current connection info

## distrobox
alias dsa='distrobox create -i quay.io/toolbx-images/archlinux-toolbox:latest -n'
# alias dsa='distrobox create -i docker.io/library/archlinux:latest -n'
alias dse='distrobox-enter'
alias dsl='distrobox list'
alias dss='distrobox stop'

## GCC compiler flag aliases
# for c++
alias cps="g++ -ggdb -pedantic-errors -Wall -Weffc++ -Wextra -Wconversion -Wsign-conversion"
alias cpvs="g++ -ggdb -pedantic-errors -Wall -Weffc++ -Wextra -Wconversion -Wsign-conversion -Werror"
# for c
alias cs="gcc -ggdb -pedantic-errors -Wall -Wextra -Wconversion -Wsign-conversion"
alias cvs="gcc -ggdb -pedantic-errors -Wall -Wextra -Wconversion -Wsign-conversion -Werror"
# for gtk4
alias ggcc='gcc `pkg-config --cflags gtk4` $1 `pkg-config --libs gtk4`'
# leetcode related
alias lte='leetcode exec'
alias ltt='leetcode test'
