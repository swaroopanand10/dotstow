jf() {
	local pdf
	pdf=$(fd -t f -e pdf -u . "${1:-$HOME}" 2>/dev/null | fzf --layout=reverse +m) && zathura "$pdf"
}

# appending 'd' because this fn will switch to dir of respective file
jfd() {
	local pdf
	local pdf_dir
	pdf=$(fd -t f -e pdf -u . "${1:-$HOME}" 2>/dev/null | fzf --layout=reverse) &&
		pdf_dir=$(realpath "$(dirname "$pdf")") &&
		cd "$pdf_dir" || return
}

jfe() {
	local pdf
	pdf=$(fd . "${1:-$HOME}" -t f -e pdf -u 2>/dev/null | fzf --layout=reverse +m) && evince "$pdf"
}

# jfs(){
#   local pdf
#   pdf=$(fd . ${1:-$HOME} -t f -e pdf -u 2> /dev/null | fzf --layout=reverse +m) && sioyek "$pdf"
# }

jda() {
	local dir
	dir=$(fd . "${1:-$HOME}" -t d -u 2>/dev/null | fzf --layout=reverse +m --preview 'tree -C {} | head -200') && cd "$dir" || return
}

jdd() {
	local dir
	dir=$(fd . -t d -u 2>/dev/null | fzf --layout=reverse +m --preview 'tree -C {} | head -200') && cd "$dir" || return
}

jd() {
	local dir
	dir=$(fd . "${1:-$HOME}" -t d 2>/dev/null | fzf --layout=reverse +m --preview 'tree -C {} | head -200') && cd "$dir" || return
}

ja() {
	local file
	file=$(fd . "${1:-$HOME}" -u \
		-E "*.exe" \
		-E "*.out" \
		-E "*.pdf" \
		-E "*.jpg" \
		-E "*.png" \
		-E "*.jpeg" \
		-E "*.tar" \
		-E "*.mp3" \
		-E "*.opus" \
		-E "*.docx" \
		--type file --type symlink \
		2>/dev/null | fzf --layout=reverse +m --preview='bat --color=always {}') && nvim "$file"
}

# appending 'd' because this fn will switch to dir of respective file
jad() {
	local file
	local file_dir
	file=$(fd . "${1:-$HOME}" -u \
		-E "*.exe" \
		-E "*.out" \
		-E "*.pdf" \
		-E "*.jpg" \
		-E "*.png" \
		-E "*.jpeg" \
		-E "*.tar" \
		-E "*.mp3" \
		-E "*.opus" \
		-E "*.docx" \
		-tf -tl \
		2>/dev/null | fzf --layout=reverse --preview='bat --color=always {}') &&
		file_dir=$(realpath "$(dirname "$file")") &&
		cd "$file_dir" || return
}

jaa() {
	local file
	file=$(fd . -u \
		-E "*.exe" \
		-E "*.out" \
		-E "*.pdf" \
		-E "*.jpg" \
		-E "*.png" \
		-E "*.jpeg" \
		-E "*.tar" \
		-E "*.mp3" \
		-E "*.opus" \
		-E "*.docx" \
		-tf -tl \
		2>/dev/null | fzf --layout=reverse +m --preview='bat --color=always {}') && nvim "$file"
}

jaad() {
	local file
	local file_dir
	file=$(fd . -u \
		-E "*.exe" \
		-E "*.out" \
		-E "*.pdf" \
		-E "*.jpg" \
		-E "*.png" \
		-E "*.jpeg" \
		-E "*.tar" \
		-E "*.mp3" \
		-E "*.opus" \
		-E "*.docx" \
		-tf -tl \
		2>/dev/null | fzf --layout=reverse --preview='bat --color=always {}') &&
		file_dir=$(realpath "$(dirname "$file")") &&
		cd "$file_dir" || return
}

jc() {
	local file
	file=$(fd . "${1:-$HOME/.config/}" -u \
		-E "*.exe" \
		-E "*.out" \
		-E "*.pdf" \
		-E "*.jpg" \
		-E "*.png" \
		-E "*.jpeg" \
		-E "*.tar" \
		-E "*.mp3" \
		-E "*.opus" \
		-E "*.docx" \
		-tf -tl \
		2>/dev/null | fzf --layout=reverse +m --preview='bat --color=always {}') && nvim "$file"
}

je() {
	local file
	file=$(fd . "${1:-$HOME/}" \
		-E "*.exe" \
		-E "*.out" \
		-E "*.pdf" \
		-E "*.jpg" \
		-E "*.png" \
		-E "*.jpeg" \
		-E "*.tar" \
		-E "*.mp3" \
		-E "*.opus" \
		-E "*.docx" \
		-tf -tl \
		2>/dev/null | fzf --layout=reverse +m --preview='bat --color=always {}') && nvim "$file"
}

jed() {
	local file
	local file_dir
	file=$(fd . "${1:-$HOME}" \
		-E "*.exe" \
		-E "*.out" \
		-E "*.pdf" \
		-E "*.jpg" \
		-E "*.png" \
		-E "*.jpeg" \
		-E "*.tar" \
		-E "*.mp3" \
		-E "*.opus" \
		-E "*.docx" \
		-tf -tl \
		2>/dev/null | fzf --layout=reverse --preview='bat --color=always {}') &&
		file_dir=$(realpath "$(dirname "$file")") &&
		cd "$file_dir" || return
}

jee() {
	local file
	file=$(fd . \
		-E "*.exe" \
		-E "*.out" \
		-E "*.pdf" \
		-E "*.jpg" \
		-E "*.png" \
		-E "*.jpeg" \
		-E "*.tar" \
		-E "*.mp3" \
		-E "*.opus" \
		-E "*.docx" \
		-tf -tl \
		2>/dev/null | fzf --layout=reverse +m --preview='bat --color=always {}') && nvim "$file"
}

jeed() {
	local file
	local file_dir
	file=$(fd . \
		-E "*.exe" \
		-E "*.out" \
		-E "*.pdf" \
		-E "*.jpg" \
		-E "*.png" \
		-E "*.jpeg" \
		-E "*.tar" \
		-E "*.mp3" \
		-E "*.opus" \
		-E "*.docx" \
		-tf -tl \
		2>/dev/null | fzf --layout=reverse --preview='bat --color=always {}') &&
		file_dir=$(realpath "$(dirname "$file")") &&
		cd "$file_dir" || return
}

### functions regarding git stuff

jg() {
	local file
	dir=$(git rev-parse --show-toplevel)
	file=$(fd . "$dir" -u --exclude ".git" \
		-E "*.exe" \
		-E "*.out" \
		-E "*.pdf" \
		-E "*.jpg" \
		-E "*.png" \
		-E "*.jpeg" \
		-E "*.tar" \
		-E "*.mp3" \
		-E "*.opus" \
		-E "*.docx" \
		-tf -tl \
		2>/dev/null | fzf --layout=reverse +m --preview='bat --color=always {}') && nvim "$file"
}

jgd() {
	local file
	local dir
	dir=$(git rev-parse --show-toplevel)
	file_dir=$(fd . "$dir" -u -td --exclude ".git" 2>/dev/null | fzf --layout=reverse --preview='bat --color=always {}') &&
		cd "$file_dir" || return
}

jgg() {
	local file
	local dir
	dir=$(git rev-parse --show-toplevel)
	file=$(fd . "$dir" -u -tf -tl --exclude ".git" 2>/dev/null | fzf --layout=reverse --preview='bat --color=always {}') &&
		file_dir=$(realpath "$(dirname "$file")") &&
		cd "$file_dir" || return
}
