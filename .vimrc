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

syntax on
set termguicolors

""" Vim Plugs """
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'Valloric/YouCompleteMe'
Plug 'vim-syntastic/syntastic'
Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'powerline/fonts'
Plug 'majutsushi/tagbar'
" Color Themes
Plug 'sjl/badwolf'
Plug 'chriskempson/base16-vim'
Plug 'dracula/vim', {'as':'dracula'}
Plug 'srcery-colors/srcery-vim'
Plug 'lu-ren/SerialExperimentsLain'
Plug 'TroyFletcher/vim-colors-synthwave'
" Airline Color Themes
Plug 'vim-airline/vim-airline-themes'

call plug#end()

"color fromthehell
""""""color srcery
""""""color synthwave
"color SerialExperimentsLain
"color base16-dracula
color badwolf
"let g:airline_theme='kolor'
let g:airline_theme='base16'

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

" Shortcuts
" Vim tab navigation
nnoremap th  :tabfirst<CR>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnew<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>
" Alternatively use
"nnoremap th :tabnext<CR>
"nnoremap tl :tabprev<CR>
"nnoremap tn :tabnew<CR>

" NERDTree
nnoremap TT :NERDTreeToggle<CR>

" disable preview window for YCM
set completeopt-=preview
" enable matching html tags
runtime macros/matchit.vim

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
 
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_cpp_checkers = ['GCC']
