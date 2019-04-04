#!/bin/sh

# Download contents
wget -P ~/ https://raw.githubusercontent.com/JoMedeiros/my-utils/master/.vimrc
mkdir -p ~/.vim/autoload 
mkdir -p ~/.vim/syntax
wget -P ~/.vim/autoload https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
wget -P ~/.vim/syntax https://raw.githubusercontent.com/JoMedeiros/my-utils/master/c.vim
# Run the scripts
vim +'PlugInstall --sync' +qa
~/.vim/plugged/YouCompleteMe/install.py --clang-completer
~/.vim/plugged/fonts/install.sh

