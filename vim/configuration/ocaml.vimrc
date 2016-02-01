""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configuration for ocp-indent
set rtp^="~/.opam/system/share/ocp-indent/vim"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configuration for merlin
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"

execute "helptags " . g:opamshare . "/merlin/vim/doc"

let g:syntastic_ocaml_checkers = ["merlin"]
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufNewFile,BufRead *.ml,*.mli set ts=2
autocmd BufNewFile,BufRead *.ml,*.mli set shiftwidth=2
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
