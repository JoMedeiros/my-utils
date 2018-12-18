set autoindent
set cindent
set tabstop=2
set shiftwidth=2
set expandtab
set number
set relativenumber
set foldmethod=indent
set foldlevel=20
set noshowmode
"autocmd vimenter * NERDTree

syntax on
set termguicolors

""" Vim Plugs """
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'Valloric/YouCompleteMe'
Plug 'itchyny/lightline.vim'
Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'powerline/fonts'
Plug 'majutsushi/tagbar'
" Color Themes
Plug 'sjl/badwolf'
Plug 'chriskempson/base16-vim'
Plug 'srcery-colors/srcery-vim'
Plug 'TroyFletcher/vim-colors-synthwave'
" Airline Color Themes
Plug 'vim-airline/vim-airline-themes'

call plug#end()

"color nachtleben
"color fromthehell
"color blue-mood
""""""color srcery
color synthwave
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

"Turn off expandtab for editing makefiles
autocmd FileType make setlocal noexpandtab

" Before configuring install the fonts:
" https://github.com/powerline/fonts
" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_extensions = ['branch', 'tabline']
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

let g:airline_theme='kolor'

" Shortcuts
" Vim tab navigation
nnoremap th  :tabfirst<CR>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>
" Alternatively use
"nnoremap th :tabnext<CR>
"nnoremap tl :tabprev<CR>
"nnoremap tn :tabnew<CR>

" NERDTree
nnoremap TT :NERDTreeToggle<CR>

