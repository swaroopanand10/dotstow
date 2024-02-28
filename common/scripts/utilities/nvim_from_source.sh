([ -d $HOME/repos/neovim ] || (git clone https://github.com/neovim/neovim.git $HOME/repos/neovim))
cd $HOME/repos/neovim && git pull &&
([ -d $HOME/repos/neovim/build ] && rm -r build/)
make CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$HOME/repos/neovim" &&
make install
