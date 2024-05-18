HISTFILE=~/.histfile
HISTSIZE=8000 # no of lines of history kept within the shell
SAVEHIST=8000 # no of lines of history to save to histfile
setopt autocd extendedglob nomatch notify appendhistory sharehistory
# unsetopt PROMPT_SP # will fix the % sign
bindkey -e

# for changing color of the directories to normal which are also writable by group and others
export LS_COLORS="$LS_COLORS:ow=1;34:tw=1;34:"

### using zinit plugin manager as plugins are not updated at aur
# source ~/.config/zsh/zinit.sh

### "fzf keybinding sourcing"
source ~/.config/zsh/fzfkeybinding.zsh
source ~/.config/zsh/alias.sh
source ~/.config/zsh/function.sh

### sourcing manpager file
source $HOME/.config/zsh/manpager.sh

### sourcing completion file
source $HOME/.config/zsh/completion.sh

#### sourcing gh(github cli) completion file
# source $HOME/.config/zsh/ghcompletion.sh

### Sourcing vi-mode file
source $HOME/.config/zsh/vimode.sh

### Sourcing plugins at last
# source $HOME/.config/zsh/plugins.sh
source $HOME/.config/zsh/plugins_git.sh

### Sourcing shell integrations
source $HOME/.config/zsh/shell_integrations.sh

## sourcing .Xresources at every start (not needed now)
# xrdb -load ~/.Xresources
# xrdb -merge ~/.Xresources
