# Use lf to switch directories and bind it to ctrl-o
lfcd () {
    tmp="$(mktemp -uq)"
    trap 'rm -f $tmp >/dev/null 2>&1' HUP INT QUIT TERM PWR EXIT
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}
# bindkey -s '^o' '^ulfcd\n' # removing this binding since bashrc does not recognize this


fkill() { # to kill a process using fzf
  pid=$(ps -ef | sed 1d | fzf -m --ansi --color fg:-1,bg:-1,hl:46,fg+:40,bg+:233,hl+:46 --color prompt:166,border:46 --height 40%  --border=sharp --prompt="➤  " --pointer="➤ " --marker="➤ " | awk '{print $2}')

  if [ "x$pid" != "x" ]
  then
    kill -${1:-9} $pid
  fi
}

# Using fzf for installing and finding packages
# note: first run this "sudo pacman -Fy" # <- only run this once
pac() {
 pacman -Slq | fzf --layout=reverse -m --preview  'bat <(pac man -Si {1}) <(pacman -Fl {1} | awk "{print \$2}")' | xargs -ro sudo pacman -S 
}

aur(){
 yay -Slq | fzf --layout=reverse -m --preview  'bat <(yay -Si {1}) <(yay -Fl {1} | awk "{print \$2}")' | xargs -ro  yay -S
}

par(){
 paru -Slq | fzf --layout=reverse -m --preview  'bat <(paru -Si {1}) <(paru -Fl {1} | awk "{print \$2}")' | xargs -ro  paru -S
}

source ~/.config/zsh/find-based-functions.sh
source ~/.config/zsh/fd-based-functions.sh
