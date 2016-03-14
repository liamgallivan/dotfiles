"Vundle pre-setup
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Install some vundle bundles

"Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim' 

"Other vim plugins
Bundle 'okiehangover/jshint.vim'
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'kevinw/pyflakes-vim'
Plugin 'rking/ag.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'ehamberg/vim-cute-python'
Plugin 'flazz/vim-colorschemes'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'scrooloose/nerdtree'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'mxw/vim-jsx'
Plugin 'scrooloose/syntastic'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype indent on    " required
filetype plugin on    " required

autocmd vimenter * NERDTree
map <C-m> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map <F3> :NERDTreeToggle<CR>
" utilsnips fixes
let g:UltiSnipsExpandTrigger="<c-j>"
au BufRead,BufNewFile *py,*pyw,*.c,*.h set tabstop=4

"spaces for indents
au BufRead,BufNewFile *.py,*pyw set shiftwidth=4
au BufRead,BufNewFile *.py,*.pyw set expandtab
au BufRead,BufNewFile *.py set softtabstop=4
au BufNewFile,BufRead *.js, *.html, *.css, *.cpp, *.h, *.go set tabstop=2
au BufNewFile,BufRead *.js, *.html, *.css, *.cpp, *.h, *.go set softtabstop=2
au BufNewFile,BufRead *.js, *.html, *.css, *.cpp, *.h, *.go set shiftwidth=2
" Filetype recognition for pyflakes
filetype on                     " enables filetype detection

" Jsx syntax
let g:jsx_ext_required = 0 " Allow JSX in normal JS files
"get color scheme right
set t_Co=256
set background=dark
syntax enable
colorscheme zenburn

:command W w
" Spaces & Tabs
set tabstop=2       			" number of visual spaces per tab
set softtabstop=2   			" number of spaces in tab when editing
set shiftwidth=2
set expandtab       			" tabs are spaces
set smartindent
set autoindent

" UI Config
set number              		" show line numbers
set showcmd             		" show command in bottom bar
set wildmenu            		" visual autocomplete for command menu
set lazyredraw          		" redraw only when we need to.
set showmatch           		" highlight matching [{()}]
set cursorline                  " Shows a line under cursor

" Searching
set incsearch				    " search as characters are entered
set hlsearch				    " highlight matches

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" Folding

" Set foldenable          		" enable folding
set foldlevelstart=10   		" open most folds by default
set foldnestmax=10      		" 10 nested fold max

" space open/closes folds
nnoremap <space> za
set foldmethod=indent   		" fold based on indent level

" Movement

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>

" highlight last inserted text
nnoremap gV `[v`]

" Fix Strange backspace problem
set backspace=indent,eol,start

" Setup showing column numbers
set ruler
"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
" strips trailing whitespace at the end of files. this
" is called on buffer write in the autogroup above.

