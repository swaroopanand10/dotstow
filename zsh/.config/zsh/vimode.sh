## Enabling vi mode
bindkey -v
export KEYTIMEOUT=5
bindkey jk vi-cmd-mode
bindkey kj vi-cmd-mode

function zvm_after_init() {
	zvm_bindkey viins 'jk' zvm_exit_insert_mode
	zvm_bindkey viins 'kj' zvm_exit_insert_mode
}

# Change cursor shape for different vi modes.
function zle-keymap-select {
	if [[ ${KEYMAP} == vicmd ]] ||
		[[ $1 = 'block' ]]; then
		echo -ne '\e[2 q'
	elif [[ ${KEYMAP} == main ]] ||
		[[ ${KEYMAP} == viins ]] ||
		[[ ${KEYMAP} = '' ]] ||
		[[ $1 = 'beam' ]]; then
		echo -ne '\e[6 q'
	fi
}
zle -N zle-keymap-select
zle-line-init() {
	zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
	echo -ne "\e[6 q"
}
zle -N zle-line-init
echo -ne '\e[2 q'                # Use beam shape cursor on startup.
preexec() { echo -ne '\e[6 q'; } # Use beam shape cursor for each new prompt.

# Yank to the system clipboard while in vi-mode(will work only in wayland)
function vi-yank-wayland {
	zle vi-yank
	echo "$CUTBUFFER" | wl-copy
}

function vi-yank-xorg { # not using it yer
	zle vi-yank
	echo "$CUTBUFFER" | xsel -i
}

zle -N vi-yank-wayland
bindkey -M vicmd 'y' vi-yank-wayland

# vi-append-x-selection() {
# 	RBUFFER=$(xsel -o -p </dev/null)$RBUFFER
# }
#
# vi-yank-x-selection() {
# 	print -rn -- "$CUTBUFFER" | xsel -i -p
# }
#
# if [ "$XDG_SESSION_TYPE" = "wayland" ]; then # not working
# 	zle -N vi-yank-wayland
# 	bindkey -M vicmd 'y' vi-yank-wayland
# else
# 	zle -N vi-yank-x-selection
# 	bindkey -a 'y' vi-yank-x-selection
# 	zle -N vi-append-x-selection
# 	bindkey -a 'x' vi-append-x-selection
# fi

# Edit line in vim with ctrl-e:
autoload edit-command-line
zle -N edit-command-line
bindkey '^e' edit-command-line
bindkey -M vicmd '^e' edit-command-line # this is for enabling c-e in vi mode as well

## very important It will help in using backspace after exiting vi mode
bindkey -v '^?' backward-delete-char
