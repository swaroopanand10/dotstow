#Prints This also searches in hidden files but uses grep
sgr() {
	local text
	text=$(grep --color=always --line-number -i -I --recursive ${1} ${2:-.} | fzf --multi --ansi --layout=reverse --delimiter : --preview-window +{2}-/2:cycle --preview 'bat --theme="Dracula" --style=numbers --color=always --highlight-line {2} {1}') && echo "./$text"
}

# Prints Normal files excluding hidden and .gitignore
srg() {
	local text
	text=$(rg --color=always --line-number --smart-case --no-heading --column ${1} ${2:-.} | fzf --multi --ansi --layout=reverse --delimiter : --preview-window +{2}-/2 --preview 'bat --theme="Dracula" --style=numbers --color=always --highlight-line {2} {1}') && echo "./$text"
}

# Prints All files including hidden (multi feature)
srga() {
	local text
	text=$(rg --color=always --line-number --smart-case --no-heading --column --no-ignore --hidden ${1} ${2:-.} 2>/dev/null | fzf --multi --ansi --layout=reverse --delimiter : --preview-window +{2}-/2:cycle --preview 'bat --theme="Dracula" --style=numbers --color=always --highlight-line {2} {1}') && echo "./$text"
}

## Attempt to open create a function to open multiple selections in respective files at once (this function works correctly but opens files in different nvim instances)
rgao() {
	local text
	result=$(rg --color=always -n -S --no-heading --column --no-ignore --hidden ${1} ${2:-.} 2>/dev/null | fzf --multi --ansi --layout=reverse --delimiter : --preview-window +{2}-/2:cycle --preview 'bat --theme="Dracula" --style=numbers --color=always --highlight-line {2} {1}') &&
		if [ $result != " " ]; then
			numberofline=$(echo "$result" | wc -l)
			file_array=()
			line_array=()
			column_array=()
			for ((i = 1; i <= numberofline; i++)); do
				text=$(echo $result | sed -n "$i"p)
				file=$(echo "$text" | awk -F ':' '{print $1}') &&
					line=$(echo "$text" | awk -F ':' '{print $2}') &&
					column=$(echo "$text" | awk -F ':' '{print $3}') &&
					file_array+=($file)
				line_array+=($line)
				column_array+=($column)
				nvim +'call cursor('"$line"','"$column"')' $file
			done
		fi
}

# rgao() {
# 	local text
# 	result=$(rg --color=always -n -S --no-heading --column --no-ignore --hidden ${1} ${2:-.} 2>/dev/null | fzf --multi --ansi --layout=reverse --delimiter : --preview-window +{2}-/2:cycle --preview 'bat --theme="Dracula" --style=numbers --color=always --highlight-line {2} {1}') &&
# 		if [ $result != " " ]; then
# 				file=$(echo "$text" | awk -F ':' '{print $1}') &&
# 					line=$(echo "$text" | awk -F ':' '{print $2}') &&
# 					column=$(echo "$text" | awk -F ':' '{print $3}') &&
# 				nvim +'call cursor('"$line"','"$column"')' $file
# 		fi
# }

## Will search for text(in normal (not hidden) files) and open that in respective file(no multi-selection) at that exact position with rg
rgo() {
	local text
	text=$(rg --color=always --line-number --smart-case --no-heading --column ${1} ${2:-.} | fzf --ansi --layout=reverse --delimiter : --preview-window +{2}-/2 --preview 'bat --theme="Dracula" --style=numbers --color=always --highlight-line {2} {1}') && echo $text
	if [ $text != " " ]; then
		file=$(echo "$text" | awk -F ':' '{print $1}') &&
			line=$(echo "$text" | awk -F ':' '{print $2}') &&
			column=$(echo "$text" | awk -F ':' '{print $3}') &&
			nvim +'call cursor('"$line"','"$column"')' $file
	fi
}

## Will search for text(in all files) and open that in respective file(no multi-selection) at that exact position with grep
gro() {
	local text
	text=$(grep --color=always --line-number -i -I --recursive ${1} ${2:-.} | fzf --ansi --layout=reverse --delimiter : --preview-window +{2}-/2:cycle --preview 'bat --theme="Dracula" --style=numbers --color=always --highlight-line {2} {1}') && echo $text
	if [ "$text" != "" ]; then
		file=$(echo "$text" | awk -F ':' '{print $1}') &&
			line=$(echo "$text" | awk -F ':' '{print $2}') &&
			nvim +'call cursor('"$line"',0)' $file
	fi
}
