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
alias lfu='~/.config/lf/ub-lfub.sh'

## Others
alias ncm='ncmpcpp'
alias grep='grep --color'
alias nb='newsboat'
alias wp='warp-cli'
alias ggcc='gcc `pkg-config --cflags gtk4` $1 `pkg-config --libs gtk4`'
alias bs='bash'
alias cx='chmod +x'
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
alias bv='NVIM_APPNAME=basicide nvim'
alias nv='NVIM_APPNAME=nvchad nvim'
alias kv='NVIM_APPNAME=ksnvim nvim'

## Stow
alias ste='cd ~/dotstow/ && stow */ -t ~'
alias sta='cd ~/dotstow/ && stow */ -t ~ --adopt'
alias st='cd ~/dotstow/ && stow -t ~'

## Package searching
alias pke='paru -Q | fzf'  # searching all packages
alias pki='paru -Qe | fzf' # searching installed package
alias pkn='paru -Qn | fzf' # searching only normal package
alias pkr='paru -Qm | fzf' # searching only aur package

## Git
alias gcl='git clone'
alias gcm='git commit -m'
alias ga='git add'
alias gp='git push'
alias gs='git status'
alias gl='git log'
alias gd='git diff'

# Networking
alias hta='nmcli device wifi hotspot ssid "swarooplatpot" password anand2002'
alias ht='nmcli con up Hotspot'
alias ncu='nmcli con up' # this is for connecting to already saved connection(provide connection after it)
alias htn='nmcli device wifi hotspot'
alias wfl='nmcli device wifi list'
alias wfs='nmcli device wifi rescan'
alias wfc='nmcli device wifi connect'
alias ndc='nmcli device connect'
alias ndd='nmcli device disconnect'
alias nno='nmcli networking on'
alias nnf='nmcli networking off'
alias nwo='nmcli radio wifi on'
alias nwf='nmcli radio wifi off'
alias ncs='nmcli connection show'
