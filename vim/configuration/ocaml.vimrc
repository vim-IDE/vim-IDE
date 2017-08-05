""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configuration for ocp-indent
set rtp^="~/.opam/system/share/ocp-indent/vim"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configuration for merlin
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"
let g:syntastic_ocaml_checkers = ["merlin"]
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufNewFile,BufRead *.ml,*.mli,*.mll,*.mly,_oasis,*.eliom,*.eliomi set ts=2
autocmd BufNewFile,BufRead *.ml,*.mli,*.mll,*.mly,_oasis,*.eliom,*.eliomi set shiftwidth=2
autocmd BufNewFile,BufRead *.ml,*.mli,*.mll,*.mly,_oasis,*.eliom,*.eliomi set expandtab
autocmd BufNewFile,BufRead *.eliom,*.eliomi set ft=ocaml
autocmd BufNewFile,BufRead *.eliom,*.eliomi call SyntasticToggleMode()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""" Don't use syntastic on mly and mll files
let g:syntastic_ignore_files = ['(\m\c\.ml[ly]|.eliom[i]?)$']

let g:easy_align_delimiters = {
\ ';' : { 'pattern' : ';' },
\ 'a' : { 'pattern' : '->'}
\ }
