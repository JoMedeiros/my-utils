#!/bin/sh

# Download contents
wget -P ~/Codes https://raw.githubusercontent.com/JoMedeiros/my-utils/master/.vimrc
mkdir -p ~/Codes/.vim/autoload 
wget -P ~/Codes/.vim/autoload https://raw.githubusercontent.com/JoMedeiros/my-utils/master/.vim/autoload/plug.vim
# Run the scripts
vim +'PlugInstall --sync' +qa
~/.vim/plugged/YouCompleteMe/install.sh
~/.vim/plugged/fonts/install.sh

