call plug#begin("~/.vim/plugged")
Plug 'itchyny/lightline.vim'
Plug 'davidhalter/jedi-vim'
Plug 'nvie/vim-flake8'
Plug 'w0rp/ale'
Plug 'chriskempson/base16-vim'
call plug#end()

"Config Section

" deal with colors
if !has('gui_running')
  set t_Co=256
endif
if (match($TERM, "-256color") != -1) && (match($TERM, "screen-256color") == -1)
  " screen does not (yet) support truecolor
  set termguicolors
endif
set background=dark
let base16colorspace=256
colorscheme base16-gruvbox-dark-hard
syntax on
set number
set incsearch

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

" Tab and Indent configuration
set expandtab
set tabstop=4
set shiftwidth=4

" Search configuration
set ignorecase                    " ignore case when searching
set smartcase                     " turn on smartcase

" Ale
let g:ale_lint_on_enter = 0
let g:ale_lint_on_text_changed = 'never'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_linters = {'python': ['flake8']}

" No arrow keys --- force yourself to use the home row
nnoremap <up> <nop>
nnoremap <down> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Left and right can switch buffers
nnoremap <left> :bp<CR>
nnoremap <right> :bn<CR>
