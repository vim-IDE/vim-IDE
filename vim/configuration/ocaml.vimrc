""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configuration for ocp-indent
set rtp^="~/.opam/system/share/ocp-indent/vim"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configuration for merlin
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"

execute "helptags " . g:opamshare . "/merlin/vim/doc"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
