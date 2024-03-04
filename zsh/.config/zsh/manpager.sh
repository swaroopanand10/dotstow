### "vim" as manpager
# export MANPAGER='/bin/bash -c "vim -MRn -c \"set buftype=nofile showtabline=0 ft=man ts=8 nomod nolist norelativenumber nonu noma\" -c \"normal L\" -c \"nmap q :qa<CR>\"</dev/tty <(col -b)"'

### "bat" as manpager
# export MANPAGER="sh -c 'col -bx | bat -l man -p'"

## "nvim" as manpager
# export MANPAGER=nvimpager
export MANPAGER='nvim +Man!'
