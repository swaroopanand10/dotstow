# fhd - cd to any directory in Home including hidden directories
fhd() {
  local dir
  # dir=$(find ${1:-~} -type d 2> /dev/null | fzf --layout=reverse +m) && cd "$dir"
 dir=$(find ${1:-~} -type d 2> /dev/null | fzf --layout=reverse +m --preview 'tree -C {} | head -200') && cd "$dir" # it also uses previews by using tree

}


# same as fhd but for /
frd() {
  local dir
  # dir=$(find ${1:-/} -type d 2> /dev/null | fzf --layout=reverse +m) && cd "$dir"

 dir=$(find ${1:-/} -type d 2> /dev/null | fzf --layout=reverse +m --preview 'tree -C {} | head -200') && cd "$dir" # it also uses previews by using tree
}

# same as fzf but for /
frz(){
  find ${1:-/} 2> /dev/null | fzf --layout=reverse +m
}

# script to search and open pdf in ~/
fp() {
  local pdf
  pdf=$(find ${1:-~} -type f -name '*.pdf' 2> /dev/null | fzf --layout=reverse +m) && zathura "$pdf"
}


# same as above but to open in evince
fpe() {
  local pdf
  pdf=$(find ${1:-~} -type f -name '*.pdf' 2> /dev/null | fzf --layout=reverse +m) && evince "$pdf"
}

# script to search and open files in ~/
fe() { 
  local file
  file=$(find ${1:-~} -not -name "*.exe"\
  -not -name "*.out"\
  -not -name "*.pdf"\
  -not -name "*.jpg"\
  -not -name "*.png"\
  -not -name "*.jpeg"\
  -not -name "*.tar"\
  -not -name "*.mp3"\
  -not -name "*.opus"\
  -not -name "*.docx"\
  -type f \
  2> /dev/null | fzf --layout=reverse +m --preview='bat --color=always {}') && nvim "$file"  
}

fec() { # search all files in .config
  local file
  file=$(find ${1:-~/.config/} -not -name "*.exe"\
  -not -name "*.out"\
  -not -name "*.pdf"\
  -not -name "*.jpg"\
  -not -name "*.png"\
  -not -name "*.jpeg"\
  -not -name "*.tar"\
  -not -name "*.mp3"\
  -not -name "*.opus"\
  -not -name "*.docx"\
  -type f \
  2> /dev/null | fzf --layout=reverse +m --preview='bat --color=always {}') && nvim "$file"  
}

fn() { # search normal non-hidden files
  local file
  file=$(find ${1:-~} -not -name "*.exe"\
  -not -name "*.out"\
  -not -name "*.pdf"\
  -not -name "*.jpg"\
  -not -name "*.png"\
  -not -name "*.jpeg"\
  -not -name "*.tar"\
  -not -name "*.mp3"\
  -not -name "*.opus"\
  -not -name "*.docx"\
  -not -path "*/.*"\
  -type f \
  2> /dev/null | fzf --layout=reverse +m --preview='bat --color=always {}') && nvim "$file"  
}

fh() { #search all hidden files
  local file
  file=$(find ${1:-~} -not -name "*.exe"\
  -not -name "*.out"\
  -not -name "*.pdf"\
  -not -name "*.jpg"\
  -not -name "*.png"\
  -not -name "*.jpeg"\
  -not -name "*.tar"\
  -not -name "*.mp3"\
  -not -name "*.opus"\
  -not -name "*.docx"\
  -path "*/.*" \
  -type f \
  2> /dev/null | fzf --layout=reverse +m --preview='bat --color=always {}') && nvim "$file"  
}


# same as fe but for /
se() {
  local file
  file=$(find ${1:-/} -not -name "*.exe"\
  -not -name "*.out"\
  -not -name "*.pdf"\
  -not -name "*.jpg"\
  -not -name "*.png"\
  -not -name "*.jpeg"\
  -not -name "*.tar"\
  -not -name "*.mp3"\
  -not -name "*.opus"\
  -not -name "*.docx"\
  -type f \
  2> /dev/null | fzf --layout=reverse +m --preview='bat --color=always {}') && sudoedit "$file"  
}
