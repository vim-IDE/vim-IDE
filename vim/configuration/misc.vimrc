let current_compiler = "gcc"

set nocompatible

set encoding=utf-8

" Activate mouse
set mouse=a

" Activate autoindent
set ai

" Activate numbering line
set nu

set cc=80
set tw=80
set ts=4
set shiftwidth=4
set whichwrap+=<,>,h,l,[,]

" Desactivate swap file creation when editing a file
set noswapfile
set backspace=indent,eol,start

" Change the current directory
set autochdir

filetype plugin on
syntax on

" Vim default syntax checking activation.
" If a plugin has his proper syntax checkers, the default will be overwrite
" because misc is the first inserted.
set omnifunc=syntaxcomplete#Complete

filetype plugin on
