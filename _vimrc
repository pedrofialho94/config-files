"The block started by 'plug#begin' and ended by 'plug#end'
" sets the plugins up

call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
"TODO: check if fzf and fzf.vim depend on fzf shell package
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

call plug#end()

" Set choloscheme
colorscheme pablo

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

" Sets the line number bar
set nu
set relativenumber

" Sets the folding method
set foldmethod=syntax

set laststatus=2
let g:ackprg = 'ag --nogroup --nocolor --column'
let g:ycm_server_python_interpreter = '/usr/bin/python2'

" Sets vertical split to the right to keep netrw to the left
" set splitright

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

augroup ProjectDrawer
    autocmd!
    autocmd VimEnter * Vexplore
augroup END
