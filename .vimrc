set autoindent
set cindent
set tabstop=2
set shiftwidth=2
set expandtab
set number
set relativenumber
set foldmethod=indent
set foldlevel=20
autocmd vimenter * NERDTree

"Turn off expandtab for editing makefiles
autocmd FileType make setlocal noexpandtab

syntax on
set termguicolors

""" Vim Plugs """
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'Valloric/YouCompleteMe'
Plug 'vim-airline/vim-airline'
Plug 'majutsushi/tagbar'
"" Color Themes
Plug 'sjl/badwolf'
Plug 'chriskempson/base16-vim'
Plug 'srcery-colors/srcery-vim'
Plug 'TroyFletcher/vim-colors-synthwave'

call plug#end()

"color nachtleben
"color fromthehell
"color blue-mood
"""""color srcery
"color synthwave
"color relaxedgreen
"color atlantic-dark
"color frign
"color colibri
"color material-monokai
"color tomatosoup
"""""color dante
"color macvim-light
"""color SerialExperimentsLain
"""""color neuromancer
""color wonka-dark
""color wonka-light
""color farout
"color base16-ashes
color synthwave

