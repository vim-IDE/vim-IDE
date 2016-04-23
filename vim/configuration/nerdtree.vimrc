let g:current_path_for_nerd_init=expand('%:p:h')

" Open a tree on the left. Use <C-g> to open it.
noremap <C-g>				:NERDTreeTabsToggle<CR>

" Open NerdTree
let g:nerdtree_tabs_open_on_console_startup=1
let g:nerdtree_tags_autoclose=1
let g:nerdtree_tabs_synchronize_view=1
let g:nerdtree_tabs_focus_on_files=1
let g:nerdtree_tabs_smart_startup_focus=2
