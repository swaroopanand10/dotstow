HISTFILE=~/.histfile
HISTSIZE=8000 # no of lines of history kept within the shell
SAVEHIST=8000 # no of lines of history to save to histfile
setopt autocd extendedglob nomatch notify
bindkey -e

# for changing color of the directories to normal which are also writable by group and others
export LS_COLORS="$LS_COLORS:ow=1;34:tw=1;34:"

### "fzf keybinding sourcing"
source ~/.config/zsh/fzfkeybinding.zsh
source ~/.config/zsh/alias.sh
source ~/.config/zsh/function.sh

### sourcing manpager file
source $HOME/.config/zsh/manpager.sh

### sourcing completion file
source $HOME/.config/zsh/completion.sh

### Sourcing vi-mode file
source $HOME/.config/zsh/vimode.sh

# sourcing .Xresources at every start
xrdb -load ~/.Xresources
# xrdb -merge ~/.Xresources

# Sourcing plugins at last
source $HOME/.config/zsh/plugins.sh
