" Modified from
" https://github.com/mhinz/vim-galore/blob/master/static/minimal-vimrc.vim

" No Vi-compatibility
set nocompatible

" The encoding displayed
set encoding=utf-8

" Disable modeline for stricter security
set nomodeline

" Load plugins according to detected file type
filetype plugin indent on

" Enable syntax highlighting
syntax on

" Better performance
set ttyfast lazyredraw

" No bell at all
set belloff=all

" Set spell check language to British English
set spelllang=en_gb

" Automatically load file on change
set autoread

" Switch between buffers without having to save first
set hidden

" Sane window split, bottom and right of current window
set splitbelow splitright

" Enhance command-line completion
set wildmenu

" Add local share vim directory to packpath
set packpath+=~/.local/share/vim

" No delay when pressing ESC key
set ttimeoutlen=0

" Enable undo persistence
set undofile
set undodir=$HOME/.vim/undo//
if !isdirectory(&undodir)
  call mkdir(&undodir, 'p', 0700)
endif

" Set swap file location
set directory=$HOME/.vim/swap//
if !isdirectory(&directory)
  call mkdir(&directory, 'p', 0700)
endif

""""""""""""""""""""""""""""""""""""""""""""""""""
" Spacing and indent
""""""""""""""""""""""""""""""""""""""""""""""""""
" Indent according to previous line
set autoindent

" Use spaces instead of tabs
set expandtab

" Display tab as 2 spaces
set tabstop=2

" Tab key indents by 2 spaces
set softtabstop=2

" >> indents by 2 spaces
set shiftwidth=2

" >> indents to next multiple of 'shiftwidth'
set shiftround

" Make backspace work as you would expect
set backspace=indent,eol,start

""""""""""""""""""""""""""""""""""""""""""""""""""
" Search
""""""""""""""""""""""""""""""""""""""""""""""""""
" Case-insensitive search
set ignorecase

" Intelligently switch between case sensitivity in search
set smartcase

" Search incrementally
set incsearch

" Keep matches highlighted
set hlsearch

""""""""""""""""""""""""""""""""""""""""""""""""""
" Visual
""""""""""""""""""""""""""""""""""""""""""""""""""
" Show ruler
set ruler

" Show line number
set number

" Use relative line number
set relativenumber

" Always show status line
set laststatus=2

" Show as much as possible of the last line
set display=lastline

" Always hide tab pages line
set showtabline=0

" Always report changed lines
set report=0

" Show non-printable characters
set list
let &listchars = 'tab:> ,extends:>,precedes:<,nbsp:+,trail:.'

" Wrap long lines without breaking up a complete word
set linebreak

" Disable special text rendering on html
let html_no_rendering = 1

""""""""""""""""""""""""""""""""""""""""""""""""""
" Filetype
""""""""""""""""""""""""""""""""""""""""""""""""""
augroup filetype
  au!
  au FileType python setlocal ts=4 sts=4 sw=4
  au FileType java setlocal ts=4 sts=4 sw=4
  au FileType go setlocal noet
  au Filetype markdown setlocal ts=2 sts=2 sw=2
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""
" Commands
""""""""""""""""""""""""""""""""""""""""""""""""""
" Use ag for grep
if executable('ag')
  set grepprg=ag\ --hidden\ --ignore\ .git\ --vimgrep\ $*
  set grepformat=%f:%l:%c:%m
  command! -nargs=+ -bar G silent! grep! <args>|cwindow|redraw!
endif

""""""""""""""""""""""""""""""""""""""""""""""""""
" Key mappings
""""""""""""""""""""""""""""""""""""""""""""""""""
" Save visual selection to clipboard
vnoremap <Leader>c :w ! pbcopy<CR>

" Run git command on current file
nnoremap <Leader>gl<CR> :!git log -p --follow %<CR>
nnoremap <Leader>gb<CR> :!git blame %<CR>
nnoremap <Leader>gd<CR> :!git diff %<CR>

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

"" raphlcx/modest
colorscheme modest-light

"" fzf
set rtp+=/opt/homebrew/opt/fzf
