# This also searches in hidden files but uses grep
fgr(){ 
  local text
  text=$(grep --color=always --line-number -i -I --recursive ${1} ${2:-.} | fzf --ansi --layout=reverse +m --delimiter : --preview-window +{2}-/2:cycle --preview 'bat --theme="Dracula" --style=numbers --color=always --highlight-line {2} {1}') && echo $text
}

# Normal files excluding hidden and .gitignore
frg(){
  local text
  text=$(rg --color=always --line-number -S --no-heading --column ${1} ${2:-.} | fzf --ansi --layout=reverse +m --delimiter : --preview-window +{2}-/2 --preview 'bat --theme="Dracula" --style=numbers --color=always --highlight-line {2} {1}') && echo $text
}

# All files including hidden
frga(){
  local text
  text=$(rg --color=always -n -S --no-heading --column --no-ignore --hidden ${1} ${2:-.} 2> /dev/null | fzf --ansi --layout=reverse +m --delimiter : --preview-window +{2}-/2:cycle --preview 'bat --theme="Dracula" --style=numbers --color=always --highlight-line {2} {1}') && echo $text
}
