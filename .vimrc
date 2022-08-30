"The block started by 'plug#begin' and ended by 'plug#end'
" sets the plugins up

call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
"TODO: check if fzf and fzf.vim depend on fzf shell package
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

"ack.vim depends on ag utility (apt-get install silversearcher-ag)
Plug 'mileszs/ack.vim'

Plug 'tpope/vim-fugitive'

Plug 'valloric/youcompleteme'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()

" Lightline configs
set noshowmode

let g:lightline = {
      \ 'colorscheme': 'ayu_light',
      \ }

" Set choloscheme
colorscheme elflord

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
" let g:ycm_server_python_interpreter = '/usr/bin/python2'

" Configures ack.vim to use Ag
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" Configures font for gVim
if has("gui_running")
  set guifont=Consolas:h9:cANSI:qDRAFT
endif

set clipboard=unnamedplus

command Gtdef YcmCompleter GoToDefinition
command Gtdec YcmCompleter GoToDeclaration
