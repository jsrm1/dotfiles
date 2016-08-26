set number

" Make Vim more useful
set nocompatible

" Disable error bells
set noerrorbells
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable 

if ! has("gui_running")
    set t_Co=256
endif
set background=dark
colors peaksea

" Use UTF-8 without BOM
set encoding=utf-8 nobomb

" Use Unix as the standard file type
set ffs=unix,dos,mac

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Automatic commands
if has("autocmd")
	" Enable file type detection
	filetype on
	" Treat .json files as .js
	autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
	" Treat .md files as Markdown
	autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
endif

