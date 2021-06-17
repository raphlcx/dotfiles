" Disable modeline for stricter security
set nomodeline

" Better performance
set lazyredraw

" Set spell check language to British English
set spelllang=en_gb

" Switch between buffers without having to save first
set hidden

" Sane window split, bottom and right of current window
set splitbelow splitright

" Enable undo persistence
set undofile

""""""""""""""""""""""""""""""""""""""""""""""""""
" Spacing and indent
""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Display tab as 2 spaces
set tabstop=2

" >> indents by 2 spaces
set shiftwidth=2

""""""""""""""""""""""""""""""""""""""""""""""""""
" Search
""""""""""""""""""""""""""""""""""""""""""""""""""
" Case-insensitive search
set ignorecase

" Intelligently switch between case sensitivity in search
set smartcase

""""""""""""""""""""""""""""""""""""""""""""""""""
" Visual
""""""""""""""""""""""""""""""""""""""""""""""""""
" Show line number
set number

" Use relative line number
set relativenumber

" Always hide tab pages line
set showtabline=0

" Always report changed lines
set report=0

" Show non-printable characters
set list
set listchars=tab:>\ ,trail:.,nbsp:+

" Disable special text rendering on html
let html_no_rendering = 1

""""""""""""""""""""""""""""""""""""""""""""""""""
" Filetype
""""""""""""""""""""""""""""""""""""""""""""""""""
augroup filetype
	au!
	au FileType python setlocal ts=4 sw=4
	au FileType java setlocal ts=4 sw=4
	au FileType go setlocal noet
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""
" Commands
""""""""""""""""""""""""""""""""""""""""""""""""""
" Use ag for grep
if executable('ag')
	set grepprg=ag\ --vimgrep\ $*
	set grepformat=%f:%l:%c:%m
	command! -nargs=+ -bar G silent! grep! <args>|cwindow|redraw!
endif

""""""""""""""""""""""""""""""""""""""""""""""""""
" Key mappings
""""""""""""""""""""""""""""""""""""""""""""""""""
" Save visual selection to clipboard
vnoremap <Leader>c :w ! pbcopy<CR>

" Copy current file path to clipboard
nnoremap <Leader>p :let @+ = expand("%")<CR>

" Format Terraform file
nnoremap <Leader>tfmt<CR> :!terraform fmt %<CR>

" Start fzf - junegunn/fzf
nnoremap <Leader>q :FZF<CR>

" Toggle spell check
function! ToggleSpellCheck()
	set spell!
	if &spell
		echo "Spellcheck ON"
	else
		echo "Spellcheck OFF"
	endif
endfunction
nnoremap <silent> <Leader>s :call ToggleSpellCheck()<CR>

" Open item from quickfix window in vertical split
autocmd! FileType qf nnoremap <buffer> <C-v> <C-w><Enter><C-w>L

""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""
"" netrw
" Show line number in netrw
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro relativenumber'

" Hide netrw banner
let g:netrw_banner = 0

" Suppress netrw history
let g:netrw_dirhistmax = 0

"" Raphx/modest
colorscheme modest-light

"" fzf
set rtp+=/usr/local/opt/fzf
