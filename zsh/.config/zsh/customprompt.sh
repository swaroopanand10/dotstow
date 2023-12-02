# this file contain promt customization

# Load version control information
autoload -Uz vcs_info
# precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '(%b)'

# Called before prompt(?)
function precmd {

   # # Print a newline before the prompt, unless it's the first prompt in the process.
   #  if [ -z "$NEW_LINE_BEFORE_PROMPT" ]; then
   #      NEW_LINE_BEFORE_PROMPT=1
   #  elif [ "$NEW_LINE_BEFORE_PROMPT" -eq 1 ]; then
   #      echo ""
   #  fi
    vcs_info # loading git vcs info
}


## Called when executing a command
function preexec {
    # print -Pn "\e]0;${(q)1}\e\\"
}

## STYLING OF prompt
# PS1='%F{#52b0ef}%/%f %F{red}%f'
# PS1='%B%F{green} %~%f %F{red}%f%b '
setopt PROMPT_SUBST
newline=$'\n'
# PS1='%B%F{#52b0ef} %~%f %F{red}%f%b ' # without newline
PS1='%B%F{#52b0ef} %~%f${newline} %F{red}%f%b '
RPS1='%B%F{cyan}$vcs_info_msg_0_%f%b'

# PS1+=$'\e]2;$PWD' #for specifying path name in the title of the terminal


