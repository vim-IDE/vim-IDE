""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Wrapping isn't used by a lot of web developer, so it's unset
autocmd BufNewFile,BufRead *.html,*.css,*.php,*.js set textwidth=0
autocmd BufNewFile,BufRead *.html,*.css,*.php,*.js set wrapmargin=0
autocmd BufNewFile,BufRead *.html,*.css,*.php,*.js set cc=0
autocmd BufNewFile,BufRead *.html,*.css,*.php,*.js set expandtab
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" A php file contains html contents. To be able to use html5 plugin and html
" syntax highlighting, we have to set filetype
autocmd BufEnter,BufNewFile *.php		setfiletype html.php
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Autocomplete for bootstrap-snippets
autocmd BufNewFile,BufRead *.html,*.css,*.php set dictionary+=~/.vim/bundle/bootstrap-snippets/dictionary
autocmd BufNewFile,BufRead *.html,*.css,*.php set complete+=k
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:closetag_filenames = "*.php,*.html,*.xml"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au FileType javascript set omnifunc=javascriptcomplete#CompleteJS
au FileType php set omnifunc=phpcomplete#CompletePHP
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
