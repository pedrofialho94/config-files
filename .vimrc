"The block started by 'plug#begin' and ended by 'plug#end'
" sets the plugins up

call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
"ack.vim depends on ag utility (apt-get install silversearcher-ag)
Plug 'mileszs/ack.vim'
"TODO: check if fzf and fzf.vim depend on fzf shell package
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
"TODO: document YCM dependencies
Plug 'valloric/youcompleteme'

call plug#end()

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
" Enable mouse
set mouse=a
" Enable hidden buffers
set hidden

set laststatus=2
let g:ackprg = 'ag --nogroup --nocolor --column'
let g:ycm_server_python_interpreter = '/usr/bin/python2'
