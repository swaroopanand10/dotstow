#### Aliases

## for reloading zsh
alias reld='source ~/.config/zsh/.zshrc'

## ls related
alias ll='lsd -alh'
alias ls='ls --color'
alias l='lsd -l' # show long listing but no hidden dotfiles except "."

## Tmux related
# alias mx='pgrep -vx tmux > /dev/null && \
# 		tmux new -d -s delete-me && \
# 		tmux run-shell /usr/share/tmux-resurrect/scripts/restore.sh && \
# 		tmux kill-session -t delete-me && \
# 		tmux attach || tmux attach'
alias ms='tmux-sessionizer'
alias tms='tmux source-file ~/.config/tmux/tmux.conf'
alias tmk='tmux kill-server'
alias mx='~/scripts/tmux/mxnr'
# alias mux='pgrep -vxq tmux && tmux new -d -s delete-me && tmux run-shell ~/.tmux/plugins/tmux-resurrect/scripts/restore.sh && tmux kill-session -t delete-me && tmux attach || tmux attach'

## Youtube related
alias yta='yt-dlp -x -f bestaudio'
alias ytv='yt-dlp '
alias yt='ytfzf --url-handler-opts="--ytdl-format=best"'
alias ytt='ytfzf -t -T swayimg-hyprland --url-handler-opts="--ytdl-format=best"'
alias mt='wl-paste | xargs mpv'

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
alias refmpd='rm -rf ~/.config/mpd/{database,state,pid,sticker.sql} && touch ~/.config/mpd/database'
alias grp='grep --color=always -n'
alias grpp='grep --color=always -n -P'
alias cgrp='grep --color=always -i -n'
alias rgrp='grep --color=always -i -n -r -I'
alias crg='rg --color=always -n --column -S --no-heading'
alias nb='newsboat'
alias wp='warp-cli'
alias bs='bash'
alias cx='chmod +x'
alias hn='hostname'
alias pa='playerctl --list-all | xargs -L1 playerctl pause -p' # will pause all media (exept chrome inactive tabs)
alias cl='clear'
alias sb='swaybg -c "#000000"'
alias pi='kitty icat'

## Zoxide
alias zr='~/scripts/utilities/zoxide_remove_deleted.sh'
alias zo='zoxide add .'
alias zd='zoxide delete .'
# alias ze='zoxide edit'

## Man pages related
alias md='$HOME/scripts/utilities/manualpdf'
alias mm='MANWIDTH=100 man'
# alias play='mpv --audio-file=<(yt-dlp '$0' -o -) <(yt-dlp '$0' -o -)'

# ## Emacs
# alias dmi='git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.config/emacs
# ~/.config/emacs/bin/doom install'
# # alias dms='install -D ~/.config/doom/sessions/* ~/.config/emacs/.local/etc/workspaces/'
# # alias dmss='cp ~/.config/emacs/.local/etc/workspaces/* ~/.config/doom/sessions/'
# # alias dmsb='mkdir /home/swaroop/.config/doom/sessions-bak/$(date +%Y%m%d_%H%M%S) && cp /home/swaroop/.config/doom/sessions/* /home/swaroop/.config/doom/sessions-bak/$(date +%Y%m%d_%H%M%S)'
# alias ked='killall emacs ; emacs --daemon &'
# alias doom='~/.config/emacs/bin/doom'
# alias dme='emacsclient -c -a "emacs"'

## Nvim
alias sv='sudoedit'
alias v='nvim'
alias lv='NVIM_APPNAME=lazyvim nvim'
alias nv='NVIM_APPNAME=custom nvim'
alias dv='NVIM_APPNAME=basic nvim'
alias kv='$HOME/repos/neovim/bin/nvim'

## Stow
alias ste='cd ~/dotstow/ && stow */ -t ~'
alias sta='cd ~/dotstow/ && stow */ -t ~ --adopt'
alias st='cd ~/dotstow/ && stow * -t ~'

## Package searching
alias pke='yay -Q | fzf'  # searching all packages
alias pki='yay -Qe | fzf' # searching installed package
alias pkn='yay -Qn | fzf' # searching only normal package
alias pkr='yay -Qm | fzf' # searching only aur package
alias refc='sudo reflector --country "India" --score 5 --sort rate --protocol http,https --save /etc/pacman.d/mirrorlist'
alias mirrbak='sudo cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist_$(date +"%Y-%m-%d_%H:%M:%S")'
alias ref='sudo reflector --latest 100 --fastest 8 --protocol https --age 12 --sort rate --save /etc/pacman.d/mirrorlist'

## Git
alias gcl='git clone'
alias gcm='git commit -m'
alias ga='git add'
alias gaa='git add -A'
alias gp='git push'
alias gs='git status'
alias gl='git log'
alias gd='git diff'
alias grs='git restore'
alias grsa='git restore --staged'
alias gsw='git switch'
alias lg='lazygit'

## VM based
alias vma='~/scripts/vm/vm.sh'

## Vivaldi preferences saving
# alias vbk='cp $HOME/.config/vivaldi/Default/Preferences $HOME/.config/browser/vivaldi/preferences/Prefernces_$(date +"%Y-%m-%d_%H:%M:%S")'
# alias vcp='mkdir -p ~/.config/vivaldi/Default/ && touch ~/.config/vivaldi/Default/Preferences'
# alias vrs='cat ${1} > $HOME/.config/vivaldi/Default/Preferences'
# alias V_reset='rm -rf .config/vivaldi .cache/vivaldi'

## Firefox
alias fsn='$HOME/scripts/firefox/backup_restore.sh'

## buku bookmarks
# alias fs='$HOME/dotstow/common/scripts/bookmarks/buku_firefox.sh'
# alias ts='$HOME/dotstow/common/scripts/bookmarks/buku_thorium.sh'

## Networking
alias hta='nmcli device wifi hotspot ssid "swarooplatpot" password anand2002' # start hotspot with these config(will resave config)
alias ht='nmcli con up Hotspot'                                               # for turning on hotspot with already saved hotspot config
alias ncu='nmcli con up'                                                      # this is for connecting to already saved connection(provide connection after it)
alias htn='nmcli device wifi hotspot'                                         # give credientials after this to start hotspot with those
alias wfl='nmcli device wifi list'
alias wfs='nmcli device wifi rescan'
alias wfc='nmcli device wifi connect'
alias ndc='nmcli device connect'    # connect to any device
alias ndd='nmcli device disconnect' # disconnect go connected device
alias nno='nmcli networking on'     # enabling networking
alias nnf='nmcli networking off'    # disabling networking
alias nwo='nmcli radio wifi on'     # enabling wifi
alias nwf='nmcli radio wifi off'    # disabling wifi
alias ncs='nmcli connection show'   # show current connection info

## distrobox
alias dsa='distrobox create -i quay.io/toolbx-images/archlinux-toolbox:latest -n'
# alias dsa='distrobox create -i docker.io/library/archlinux:latest -n'
alias dse='distrobox-enter'
alias dsl='distrobox list'
alias dss='distrobox stop'

## Toolbox
alias txc='~/scripts/toolbox/toolbox_arch.sh'
alias te='toolbox enter'
alias txl='toolbox list'

## GCC compiler flag aliases
# for c++
alias cps="g++ -ggdb -pedantic-errors -Wall -Weffc++ -Wextra -Wconversion -Wsign-conversion"
alias cpvs="g++ -ggdb -pedantic-errors -Wall -Weffc++ -Wextra -Wconversion -Wsign-conversion -Werror"
# for c
alias cs="gcc -ggdb -pedantic-errors -Wall -Wextra -Wconversion -Wsign-conversion"
alias cvs="gcc -ggdb -pedantic-errors -Wall -Wextra -Wconversion -Wsign-conversion -Werror"
# leetcode related
alias lte='leetcode exec'
alias ltt='leetcode test'
