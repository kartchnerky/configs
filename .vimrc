syntax on
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" " On pressing tab, insert 4 spaces
set expandtab

set directory=~/.vim/swapfiles//
nmap \ :set nu! rnu! <Enter>

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugins')

" Declare the list of plugins.
Plug 'ervandew/supertab'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

set encoding=utf-8
