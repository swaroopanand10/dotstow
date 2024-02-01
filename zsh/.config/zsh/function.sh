# Use lf to switch directories and bind it to ctrl-o
lfcd() {
	tmp="$(mktemp -uq)"
	trap 'rm -f $tmp >/dev/null 2>&1' HUP INT QUIT TERM PWR EXIT
	lf -last-dir-path="$tmp" "$@"
	if [ -f "$tmp" ]; then
		dir="$(cat "$tmp")"
		[ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
	fi
}
# bindkey -s '^o' '^ulfcd\n' # removing this binding since bashrc does not recognize this

lf() { # this will open lf with feature of changing directory if quitting it with Q
	export LF_CD_FILE=/var/tmp/.lfcd-$$
	command lf $@
	if [ -s "$LF_CD_FILE" ]; then
		local DIR="$(realpath "$(cat "$LF_CD_FILE")")"
		if [ "$DIR" != "$PWD" ]; then
			echo "cd to $DIR"
			cd "$DIR"
		fi
		rm "$LF_CD_FILE"
	fi
	unset LF_CD_FILE
}

function yazi_cd() { # this will open yazi with feature of changing dir
	local tmp="$(mktemp -t "yazi-cwd.XXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

fkill() { # to kill a process using fzf
	pid=$(ps -ef | sed 1d | fzf -m --ansi --color fg:-1,bg:-1,hl:46,fg+:40,bg+:233,hl+:46 --color prompt:166,border:46 --height 40% --border=sharp --prompt="➤  " --pointer="➤ " --marker="➤ " | awk '{print $2}')

	if [ "x$pid" != "x" ]; then
		kill -${1:-9} $pid
	fi
}

# Using fzf for installing and finding packages
# note: first run this "sudo pacman -Fy" # <- only run this once
pac() {
	pacman -Slq | fzf --layout=reverse -m --preview 'bat <(pac man -Si {1}) <(pacman -Fl {1} | awk "{print \$2}")' | xargs -ro sudo pacman -S
}

aur() {
	yay -Slq | fzf --layout=reverse -m --preview 'bat <(yay -Si {1}) <(yay -Fl {1} | awk "{print \$2}")' | xargs -ro yay -S
}

par() {
	paru -Slq | fzf --layout=reverse -m --preview 'bat <(paru -Si {1}) <(paru -Fl {1} | awk "{print \$2}")' | xargs -ro paru -S
}

lt() {
	leetcode l | fzf | awk -F'[][]' '{print $2}' | xargs leetcode e
}
ltl() {
	leetcode l | fzf
}

source ~/.config/zsh/find-based-functions.sh
source ~/.config/zsh/fd-based-functions.sh
source ~/.config/zsh/grep-rg-based-functions.sh
