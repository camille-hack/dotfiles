" Clipboard
"apt install xsel

"
" Plugins (managed with vim-plug)
"
call plug#begin('~/.local/share/nvim/plugged')
" General appearance
Plug 'vim-airline/vim-airline'
Plug 'ntpeters/vim-better-whitespace'
Plug 'airblade/vim-gitgutter'
Plug 'lifepillar/vim-solarized8'
" General behaviors
Plug 'w0rp/ale'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
" Writing documents
Plug 'tpope/vim-markdown'
call plug#end()

source ~/.config/nvim/completion.vim

" Flake8 is installed with python3 and not default python
let g:ale_python_flake8_executable = 'python3'
let g:ale_python_flake8_args = '-m flake8'

set spelllang=de,en,fr
" Disable mouse integration, allow middle-mouse paste
set mouse=""
" Disable flawed "smart" indentation reformating
set autoindent nosmartindent nocindent indentexpr=
" Why on earth removing tabs by spaces ??
set tabstop=8 softtabstop=8 shiftwidth=8 noexpandtab
set ruler
" Use true colors and solarized dark theme
set termguicolors
silent! colorscheme solarized8_dark_high
let g:indentLine_setColors = 0
" Set 79-column limit and highlight the 80st column
set textwidth=79
let &colorcolumn = join(range(80,256),",")
" Disable embedded per-file nvim settings
set nomodeline
let g:markdown_folding=1
