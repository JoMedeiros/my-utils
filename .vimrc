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
set laststatus=2
set mouse=a
set encoding=UTF-8

syntax on
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

""" Vim Plugs """
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'Valloric/YouCompleteMe'
Plug 'w0rp/ale'
Plug 'vim-scripts/DoxygenToolkit.vim'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'powerline/fonts'
Plug 'xolox/vim-misc'
Plug 'dylanaraps/wal.vim'
Plug 'szw/vim-tags'
Plug 'xolox/vim-easytags'
Plug 'majutsushi/tagbar'
Plug 'ryanoasis/vim-devicons'
Plug 'trusktr/seti.vim'
Plug 'Shougo/deoplete.nvim'
"Plug 'roxma/nvim-yarp'
"Plug 'roxma/vim-hug-neovim-rpc'
" Color Themes
Plug 'nightsense/cosmic_latte'

call plug#end()

"let g:deoplete#enable_at_startup = 1
let g:ale_c_parse_makefile = 1
let g:ale_c_gcc_options = '-std=c17 -Wall -I./include'

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

set background=dark
colorscheme cosmic_latte
"colorscheme wal
" Cursor shape
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

"Turn off expandtab for editing makefiles
autocmd FileType make setlocal noexpandtab

""""""""""""""""""""""""""""""""""""""""
"      lighline configurations         "
""""""""""""""""""""""""""""""""""""""""
" Before configuring install the fonts:
" https://github.com/powerline/fonts
"let g:lightline = {
"  \   'colorscheme': 'cosmic_latte_dark',
"  \   'active': {
"  \     'left':[ [ 'mode', 'paste' ],
"  \              [ 'gitbranch', 'readonly', 'filename', 'modified' ]
"  \     ]
"  \   },
"	\   'component': {
"	\     'lineinfo': ' %3l:%-2v',
"	\   },
"  \   'component_function': {
"  \     'gitbranch': 'fugitive#head',
"  \   }
"  \ }
"let g:lightline.separator = {
"	\   'left': '', 'right': ''
"  \}
"let g:lightline.subseparator = {
"	\   'left': '', 'right': '' 
"  \}
"let g:lightline.tabline = {
"  \   'left': [ ['tabs'] ],
"  \   'right': [ ['close'] ]
"  \ }
""""""""""""""""""""""""""""""
" Airline Configurations
""""""""""""""""""""""""""""""
let g:airline_extensions = ['branch', 'tabline']
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline_theme='cosmic_latte_dark'

" unicode symbols
let g:airline_symbols = {}
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

""""""""""""""""""""""""""""""
" Ale airline configurations
""""""""""""""""""""""""""""""
"let g:lightline.component_expand = {
"      \  'linter_checking': 'lightline#ale#checking',
"      \  'linter_warnings': 'lightline#ale#warnings',
"      \  'linter_errors': 'lightline#ale#errors',
"      \  'linter_ok': 'lightline#ale#ok',
"      \ }
"let g:lightline.component_type = {
"      \     'linter_checking': 'left',
"      \     'linter_warnings': 'warning',
"      \     'linter_errors': 'error',
"      \     'linter_ok': 'left',
"      \ }
""let g:lightline.active = { 'right': [[ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_ok' ]] }
"let g:lightline#ale#indicator_checking = "\uf110"
"let g:lightline#ale#indicator_warnings = "\uf071"
"let g:lightline#ale#indicator_errors = "\uf05e"
"let g:lightline#ale#indicator_ok = "\uf00c"

set showtabline=2  " Show tabline
set guioptions-=e  " Don't use GUI tabline

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

" Ale settings
let g:airline#extensions#ale#enabled = 1

"" vim-cpp-enhanced-highlight settings
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let c_no_curly_error=1

" Tagbar setting
nmap <F8> :TagbarToggle<CR>
nnoremap zn  :set rnu!<CR>

" Disable YCM question
let g:ycm_confirm_extra_conf = 0

" Auto fill header comments (for documentation) in files
" Python
"autocmd BufNewFile *.py exe "normal O#File: " . expand('%:t') .
"      \"\r#Date Created: " . strftime("%d %b %Y") .
"      \"\r#Last Modified:\r#Summary:\r#Author:\r#License:\r"
"autocmd BufWritePre *.py exe "%s/^#Last Modified:.*$/#Last Modified: "
"      \. strftime("%d %b %Y (%T)") . "/e"
" CPP
autocmd BufNewFile *.cpp exe "normal O/**\r@file  " . expand('%:t') .
      \"\r@author  Josivan Medeiros\r@version\r@brief\r@date\r Created:  "
      \. strftime("%d %b %Y") . "\rLast Update:\r/"
      \. strftime("%d %b %Y (%T)") . "/e"
"autocmd BufWritePre *.cpp exe "%s/ \*  Last Update:.*$/  Last Update: "
"      \. strftime("%d %b %Y (%T)") . "/e"
" CPP header file
autocmd BufNewFile *.h exe "normal O/**\r@file  " . expand('%:t') .
      \"\r@author  Josivan Medeiros\r@version\r@brief\r@date\r Created:  "
      \. strftime("%d %b %Y") . "\rLast Update:\r/"
"autocmd BufWritePre *.h exe "%s/ \*  Last Update:.*$/  Last Update: "
"      \. strftime("%d %b %Y (%T)") . "/e"

