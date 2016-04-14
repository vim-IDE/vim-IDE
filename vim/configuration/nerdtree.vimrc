let g:current_path_for_nerd_init=expand('%:p:h')

" Open a tree on the left. Use <C-g> to open it.
noremap <C-g>				:NERDTreeToggle<CR>
autocmd vimenter * NERDTree

" Close automatically the nerd tree if there isn't an other windows opened.
autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()

function! s:CloseIfOnlyNerdTreeLeft()
	if exists("t:NERDTreeBufName")
		if bufwinnr(t:NERDTreeBufName) != -1
			if winnr("$") == 1
				q
			endif
		endif
	endif
endfunction
