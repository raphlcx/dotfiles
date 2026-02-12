" Disable modeline for stricter security
set nomodeline

" Set spell check language to British English
set spelllang=en_gb

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

" Tab key indents by 2 spaces
set softtabstop=2

" >> indents by 2 spaces
set shiftwidth=2

" >> indents to next multiple of 'shiftwidth'
set shiftround

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

" Show non-printable characters
set list listchars=tab:>\ ,trail:.,nbsp:+

" Wrap long lines without breaking up a complete word
set linebreak

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
nnoremap <Leader>gl<CR> :term git log -p --follow %<CR>
nnoremap <Leader>gb<CR> :term git blame %<CR>
nnoremap <Leader>gd<CR> :term git diff %<CR>

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

"" colorscheme patch for minimal syntax highlight
source $HOME/.config/nvim/colors.lua

"" fzf
set rtp+=/opt/homebrew/opt/fzf
