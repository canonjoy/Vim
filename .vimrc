set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Bundle 'Valloric/YouCompleteMe'
Plugin 'jnurmine/Zenburn'
Plugin 'preservim/nerdtree'
Plugin 'kien/ctrlp.vim'
Bundle 'tpope/vim-vinegar'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'vim-scripts/indentpython.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

abbr _sh #!/bin/bash
"enable folding
set foldmethod=indent
set foldlevel=99
set encoding=utf-8
set background=dark
set number relativenumber
set clipboard=unnamed
set splitbelow
set splitright
let mapleader = " "
syntax on
let python_hilight_all=1
colorscheme zenburn
nmap <F6> :NERDTreeToggle<CR>
map <C-o> :NERDTreeToggle %<CR>
"Map goto function to leader+g
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <space> za
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix
"Flagging Unecessary Whitespace
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
