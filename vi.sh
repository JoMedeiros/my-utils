#!/bin/sh

# Download contents
wget -P ~/ https://raw.githubusercontent.com/JoMedeiros/my-utils/master/.vimrc
mkdir -p ~/.vim/autoload 
wget -P ~/.vim/autoload https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# Run the scripts
vim +'PlugInstall --sync' +qa
~/.vim/plugged/YouCompleteMe/install.py --clang-completer
sudo apt install ycmd
~/.vim/plugged/fonts/install.sh

