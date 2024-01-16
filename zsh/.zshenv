### Setting location for zsh config files
export ZDOTDIR="$HOME/.config/zsh"
export XDG_SCREENSHOTS_DIR="$HOME/Pictures/screenshots"

### FZF related
export FZF_DEFAULT_COMMAND="find -L" # Fzf will also find hidden files after this
export FZF_DEFAULT_OPTS=" --bind ctrl-u:preview-up,ctrl-d:preview-down,?:toggle-preview,ctrl-w:toggle-preview-wrap"

### Editor setting
export VISUAL=nvim
export EDITOR=$VISUAL

### Cgdb config dir
export CGDB_DIR=$HOME/.config/cgdb

### Other Stuff
export LC_ALL=en_US.UTF-8
XDG_CURRENT_DESKTOP=Hyprland
XDG_SESSION_TYPE=wayland
XDG_SESSION_DESKTOP=Hyprland

#### GIMP related stuff start #######################################
export GIMP_PREFIX="${HOME}/gimp"

# Used to find programs/tools during build
# export PATH=$PATH:${GIMP_PREFIX}/bin

# Used to detect the build dependencies
export PKG_CONFIG_PATH="${GIMP_PREFIX}/share/pkgconfig:${GIMP_PREFIX}/lib/pkgconfig${PKG_CONFIG_PATH:+:$PKG_CONFIG_PATH}"
# Assuming a 64-bit build. Remove otherwise.
export PKG_CONFIG_PATH="${GIMP_PREFIX}/lib64/pkgconfig:$PKG_CONFIG_PATH"

# Used to find the glib-introspection dependencies
export XDG_DATA_DIRS="${XDG_DATA_DIRS:+$XDG_DATA_DIRS:}${GIMP_PREFIX}/share:/usr/local/share:/usr/share"

# Used to find the libraries at runtime
export LD_LIBRARY_PATH="${GIMP_PREFIX}/lib:${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"

# Used by Autotools to find its tools
export ACLOCAL_FLAGS="-I $INSTALL_PREFIX/share/aclocal $ACLOCAL_FLAGS"
################################ GIMP END ##########################################


#### PATH VARIABLE SETUP #################################################
PATH=/usr/bin/:$PATH

# PATH=${PATH}:$(find $HOME/scripts/ -type d -printf ":%p")
PATH=$PATH:$HOME/scripts/tmux-r/

# path variable for go
export PATH=$PATH:/usr/local/go/bin

# path variable for cargo
export PATH=$PATH:$HOME/.cargo/bin

# path variable for .local/bin
export PATH=$PATH:$HOME/.local/bin
############################# PATH END #########################

#### lf icons
export LF_ICONS="\
tw=:\
st=:\
ow=:\
dt=:\
di=:\
fi=:\
ln=:\
or=:\
ex=:\
*.c=:\
*.cc=:\
*.clj=:\
*.coffee=:\
*.cpp=:\
*.css=:\
*.d=:\
*.dart=:\
*.erl=:\
*.exs=:\
*.fs=:\
*.go=:\
*.h=:\
*.hh=:\
*.hpp=:\
*.hs=:\
*.html=:\
*.java=:\
*.jl=:\
*.js=:\
*.json=:\
*.lua=:\
*.md=:\
*.php=:\
*.pl=:\
*.pro=:\
*.py=:\
*.rb=:\
*.rs=:\
*.scala=:\
*.ts=:\
*.vim=:\
*.cmd=:\
*.ps1=:\
*.sh=:\
*.bash=:\
*.zsh=:\
*.fish=:\
*.tar=:\
*.tgz=:\
*.arc=:\
*.arj=:\
*.taz=:\
*.lha=:\
*.lz4=:\
*.lzh=:\
*.lzma=:\
*.tlz=:\
*.txz=:\
*.tzo=:\
*.t7z=:\
*.zip=:\
*.z=:\
*.dz=:\
*.gz=:\
*.lrz=:\
*.lz=:\
*.lzo=:\
*.xz=:\
*.zst=:\
*.tzst=:\
*.bz2=:\
*.bz=:\
*.tbz=:\
*.tbz2=:\
*.tz=:\
*.deb=:\
*.rpm=:\
*.jar=:\
*.war=:\
*.ear=:\
*.sar=:\
*.rar=:\
*.alz=:\
*.ace=:\
*.zoo=:\
*.cpio=:\
*.7z=:\
*.rz=:\
*.cab=:\
*.wim=:\
*.swm=:\
*.dwm=:\
*.esd=:\
*.jpg=:\
*.jpeg=:\
*.mjpg=:\
*.mjpeg=:\
*.gif=:\
*.bmp=:\
*.pbm=:\
*.pgm=:\
*.ppm=:\
*.tga=:\
*.xbm=:\
*.xpm=:\
*.tif=:\
*.tiff=:\
*.png=:\
*.svg=:\
*.svgz=:\
*.mng=:\
*.pcx=:\
*.mov=:\
*.mpg=:\
*.mpeg=:\
*.m2v=:\
*.mkv=:\
*.webm=:\
*.ogm=:\
*.mp4=:\
*.m4v=:\
*.mp4v=:\
*.vob=:\
*.qt=:\
*.nuv=:\
*.wmv=:\
*.asf=:\
*.rm=:\
*.rmvb=:\
*.flc=:\
*.avi=:\
*.fli=:\
*.flv=:\
*.gl=:\
*.dl=:\
*.xcf=:\
*.xwd=:\
*.yuv=:\
*.cgm=:\
*.emf=:\
*.ogv=:\
*.ogx=:\
*.aac=:\
*.au=:\
*.flac=:\
*.m4a=:\
*.mid=:\
*.midi=:\
*.mka=:\
*.mp3=:\
*.mpc=:\
*.ogg=:\
*.ra=:\
*.wav=:\
*.oga=:\
*.opus=:\
*.spx=:\
*.xspf=:\
*.pdf=:\
*.nix=:\
"
