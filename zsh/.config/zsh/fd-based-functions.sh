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

jda(){
  local dir
  dir=$(fd . ${1:-$HOME} -t d -u 2> /dev/null | fzf --layout=reverse +m --preview 'tree -C {} | head -200') && cd "$dir"
}

jdd(){
  local dir
  dir=$(fd . -t d -u 2> /dev/null | fzf --layout=reverse +m --preview 'tree -C {} | head -200') && cd "$dir"
}

jd(){
  local dir
  dir=$(fd . ${1:-$HOME} -t d 2> /dev/null | fzf --layout=reverse +m --preview 'tree -C {} | head -200') && cd "$dir"
}

ja(){
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

jaa(){
  local file
  file=$(fd . -u -E "*.exe"\
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

je(){
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

jee(){
  local file
  file=$(fd . -E "*.exe"\
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
