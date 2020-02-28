set encoding=utf8

"""" START Vundle Configuration 

" Disable file type for vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Utility
Plugin 'scrooloose/nerdtree'
Plugin 'Shougo/deoplete.nvim'
Plugin 'vim-syntastic/syntastic'
"Javascript
Plugin 'pangloss/vim-javascript'

"Plugin 'vim-javascript-lib'

" Theme / Interface
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Yggdroot/indentLine'
Plugin 'crusoexia/vim-monokai'

call vundle#end()            " required
filetype plugin indent on    " required
"""" END Vundle Configuration 

"""""""""""""""""""""""""""""""""""""
" Configuration Section
"""""""""""""""""""""""""""""""""""""
set nowrap

" OSX stupid backspace fix
set backspace=indent,eol,start

" Show linenumbers
set number

" Set Proper Tabs
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab

" Always display the status line
set laststatus=2

" Wild menu, Vim native autocomplete
set wildmenu

"Enable showmatch. this means that when you cursor over a character vim will
"highlight the closing tag
set showmatch 

" Enable highlighting of the current line
set cursorline
" search as characters are entered
set incsearch

"Highlight search matches
set hlsearch

"allow vim to fold code
set foldenable

" fold based on indent level
set foldmethod=indent



" Theme and Styling 
syntax on
colorscheme monokai
set termguicolors
let g:monokai_term_italic = 1
let g:monokai_gui_italic = 1

"deoplete
let g:deoplete#enable_at_startup = 1

let g:python_host_prog = '/usr/bin/python2.7'
let g:python3_host_prog = '/usr/bin/python3.7'

autocmd vimenter * NERDTree

" Vim
let g:indentLine_color_term = 239
let NERDTreeShowHidden=1
" Syntasic
let g:syntastic_javascript_checkers=['eslint']
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"""""""""""""""""""""""""""""""""""""
" Mappings configurationn
"""""""""""""""""""""""""""""""""""""
map <C-n> :NERDTreeToggle<CR>
map <C-m> :TagbarToggle<CR>

