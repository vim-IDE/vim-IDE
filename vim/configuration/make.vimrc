" Looking for a Makefile and make: depth = 4

let s:Make_max_depth = 4

function! Mkfile()
	let depth = 0
	let path = "./"
	while depth < s:Make_max_depth
		if filereadable(path . "Makefile")
			return path
		endif
		let depth += 1
		let path = "../" . path
	endwhile
endfunction

function! MkDo(dir, command)
	execute ":!(make -C " . a:dir . " " . a:command . ")"
endfunction

noremap <C-k>				:call MkDo(Mkfile(), "")<CR>
noremap <C-l>				:call MkDo(Mkfile(), "clean")<CR>
