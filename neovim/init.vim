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
" Editing
""""""""""""""""""""""""""""""""""""""""""""""""""
" Switch between buffers without having to save first
set hidden

""""""""""""""""""""""""""""""""""""""""""""""""""
" Search
""""""""""""""""""""""""""""""""""""""""""""""""""
" Case-insensitive search
set ignorecase

" Intelligently switch between case sensitivity in search
set smartcase

""""""""""""""""""""""""""""""""""""""""""""""""""
" Appearance
""""""""""""""""""""""""""""""""""""""""""""""""""
" Show line number
set number

" Use relative line mumber
set relativenumber

" Always report changed lines
set report=0

" Only redraw when necessary
set lazyredraw

""""""""""""""""""""""""""""""""""""""""""""""""""
" Windowing
""""""""""""""""""""""""""""""""""""""""""""""""""
" Open new windows below the current window
set splitbelow

" Open new windows right of the current window
set splitright

""""""""""""""""""""""""""""""""""""""""""""""""""
" Filetype-specific settings
""""""""""""""""""""""""""""""""""""""""""""""""""
augroup filetypespecificsettings
  au!
  au BufRead,BufNewFile *.py setlocal softtabstop=4 shiftwidth=4
  au BufRead,BufNewFile *.rs setlocal softtabstop=4 shiftwidth=4
  au BufRead,BufNewFile *.bats set ft=sh
  au BufRead,BufNewFile *.vue syntax sync fromstart
augroup END

" Disable special text rendering on html
let html_no_rendering = 1

""""""""""""""""""""""""""""""""""""""""""""""""""
" Commands
""""""""""""""""""""""""""""""""""""""""""""""""""
" Use ag for grep
if executable('ag')
  set grepprg=ag\ --vimgrep\ $*
  set grepformat=%f:%l:%c:%m
  command! -nargs=+ -bar Ag silent! grep! <args>|cwindow|redraw!
endif

""""""""""""""""""""""""""""""""""""""""""""""""""
" Key mappings
""""""""""""""""""""""""""""""""""""""""""""""""""
" Save visual selection to clipboard
vnoremap <Leader>y :w ! xclip -selection c<CR>

" Run git command on current file
nnoremap <Leader>gl<CR> :!git log -p --follow %<CR>
nnoremap <Leader>gb<CR> :!git blame %<CR>
nnoremap <Leader>gd<CR> :!git diff %<CR>

" Clear search highlight
nnoremap <Leader>w :nohlsearch<CR>

" Start fzf - junegunn/fzf
nnoremap <Leader>q :FZF<CR>

" Toggle ALE - w0rp/ale
function! ToggleALE()
  ALEToggle
  if g:ale_enabled == 1
    echo 'ALE ON'
  else
    echo 'ALE OFF'
  end
endfunction
nnoremap <silent> <Leader>a :call ToggleALE()<CR>

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
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'

" Hide netrw banner
let g:netrw_banner = 0

" Suppress netrw history
let g:netrw_dirhistmax = 0

"" Raphx/modest
if &term == 'linux'
  colorscheme modest-dark
else
  colorscheme modest-light
endif

"" w0rp/ale
let g:ale_linters = { 'vue': ['eslint', 'stylelint'] }
let g:ale_linter_aliases = { 'vue': ['vue', 'javascript', 'css'] }
let g:ale_set_highlights = 0
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:ale_lint_on_save = 0
let g:ale_ruby_rubocop_executable = 'bundle'
let g:ale_enabled = 0
