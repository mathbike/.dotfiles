" vimrc

" set rtp +=~/.vim/autoload/plug.vim

filetype on
filetype plugin on
filetype indent on
syntax on

set nocompatible
set number
set wildmenu

call plug#begin('~/.vim/plugged')

Plug 'lervag/vimtex'

call plug#end()

