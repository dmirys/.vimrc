" C/C++ file editing settings
" Description: Extension of basic.vimrc (General settings) for working with C/C++ files.
" Author: Dmitry Yastrebkov


" Load general settings
runtime basic.vimrc

" Functional buttons presets
" ==========================

" F4 - Switch between header and source files
map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>

" F9 - Save, build and run
map <silent><F9> <ESC>:w<CR>:call Run()<CR>
function! Run()
	let file_ext = expand('%:e')
	if file_ext == 'cpp'
		" Build and run
		" '%' gives current file name, '<' removes the extension and dot, so '%<' gets file basename
		!/usr/bin/clang++ % -o %< && ./%<
	else
	       	echo 'Do not know how to run such type of file'
	endif
endfunction

