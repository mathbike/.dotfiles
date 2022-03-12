" vimrc

" automatic installation:
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
	silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

filetype on
filetype plugin on
filetype indent on
syntax on

set encoding=utf-8 
set nocompatible
set number
set wildmenu

call plug#begin('~/.vim/plugged')

Plug 'lervag/vimtex'

call plug#end()

let g:vimtex_view_method = 'zathura'

