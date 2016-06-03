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
autocmd BufNewFile,BufRead *.ml,*.mli,*.mll,*.mly,_oasis set ts=2
autocmd BufNewFile,BufRead *.ml,*.mli,*.mll,*.mly,_oasis set shiftwidth=2
autocmd BufNewFile,BufRead *.ml,*.mli,*.mll,*.mly,_oasis set expandtab
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""" Don't use syntastic on mly and mll files
let g:syntastic_ignore_files = ['\m\c\.ml[ly]$']
