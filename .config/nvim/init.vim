" Clipboard
"apt install xsel

"
" Plugins (managed with vim-plug)
"
if empty(glob("~/.local/share/nvim/site/autoload/plug.vim"))
	!curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source "~/.config/nvim/init.vim"
endif

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

let g:deoplete#enable_at_startup = 1
" Flake8 is installed with python3 and not default python
let g:ale_python_flake8_executable = 'python3'
let g:ale_python_flake8_options = '-m flake8'

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
" Disable embedded per-file nvim settings
set nomodeline
let g:markdown_folding=1
" Wrapping: disable visual and editing automatic wrapping ;
" instead, highlight the 80st column
set nowrap
set textwidth=0
let &colorcolumn = join(range(80,256),",")
