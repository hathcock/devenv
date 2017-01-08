"
"   plugins with vim-plug
"

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mileszs/ack.vim'

call plug#end()

let g:ctrlp_working_path_mode = 'ra'
let g:ackprg = 'ag --vimgrep --smart-case'

"
"   basic settings
"

set t_Co=256
syntax on
set number
set ts=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set noswapfile
set nobackup
set showmatch
set hlsearch
set incsearch
set mouse=incr
set title
set laststatus=2
set backspace=indent,eol,start
set lazyredraw

"
"   colorscheme
"

colorscheme nofrils-dark

"
"   filetype behavior
"

filetype plugin indent on

au BufRead,BufNewFile *.sv set filetype=verilog
au BufRead,BufNewFile *.svh set filetype=verilog
au BufRead,BufNewFile *.vh set filetype=verilog
au! FileType python setl nosmartindent
au! FileType verilog setl nosmartindent
au! FileType sass setl sw=4
