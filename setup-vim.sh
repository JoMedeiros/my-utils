#!/bin/sh

# Download contents
wget -P ~/ https://raw.githubusercontent.com/JoMedeiros/my-utils/master/.vimrc
mkdir -p ~/.vim/autoload 
wget -P ~/.vim/autoload https://raw.githubusercontent.com/JoMedeiros/my-utils/master/.vim/autoload/plug.vim
# Run the scripts
vim +'PlugInstall --sync' +qa
~/.vim/plugged/YouCompleteMe/install.sh
~/.vim/plugged/fonts/install.sh

