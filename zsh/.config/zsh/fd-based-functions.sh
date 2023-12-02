jf(){
  local pdf
  pdf=$(fd  -t f -e pdf -u . ${1:-$HOME} 2> /dev/null | fzf --layout=reverse +m) && zathura "$pdf"
}

jfe(){
  local pdf
  pdf=$(fd . ${1:-$HOME} -t f -e pdf -u 2> /dev/null | fzf --layout=reverse +m) && evince "$pdf"
}

jfs(){
  local pdf
  pdf=$(fd . ${1:-$HOME} -t f -e pdf -u 2> /dev/null | fzf --layout=reverse +m) && sioyek "$pdf"
}

jd(){
  local dir
  dir=$(fd . ${1:-$HOME} -t d -u 2> /dev/null | fzf --layout=reverse +m --preview 'tree -C {} | head -200') && cd "$dir"
}

je(){
  local file
  file=$(fd . ${1:-$HOME} -u -E "*.exe"\
  -E "*.out"\
  -E "*.pdf"\
  -E "*.jpg"\
  -E "*.png"\
  -E "*.jpeg"\
  -E "*.tar"\
  -E "*.mp3"\
  -E "*.opus"\
  -E "*.docx"\
  -tf -ts \
  2> /dev/null | fzf --layout=reverse +m --preview='bat --color=always {}') && nvim "$file"  
}

jc(){
  local file
  file=$(fd . ${1:-$HOME/.config/} -u -E "*.exe"\
  -E "*.out"\
  -E "*.pdf"\
  -E "*.jpg"\
  -E "*.png"\
  -E "*.jpeg"\
  -E "*.tar"\
  -E "*.mp3"\
  -E "*.opus"\
  -E "*.docx"\
  -tf -ts \
  2> /dev/null | fzf --layout=reverse +m --preview='bat --color=always {}') && nvim "$file"  
}

jn(){
  local file
  file=$(fd . ${1:-$HOME/} -E "*.exe"\
  -E "*.out"\
  -E "*.pdf"\
  -E "*.jpg"\
  -E "*.png"\
  -E "*.jpeg"\
  -E "*.tar"\
  -E "*.mp3"\
  -E "*.opus"\
  -E "*.docx"\
  -tf -ts \
  2> /dev/null | fzf --layout=reverse +m --preview='bat --color=always {}') && nvim "$file"  
}

