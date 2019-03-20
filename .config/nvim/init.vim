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
"" General appearance
Plug 'vim-airline/vim-airline'
Plug 'ntpeters/vim-better-whitespace'
Plug 'mhinz/vim-signify'
Plug 'lifepillar/vim-solarized8'
"" General behaviors
Plug 'w0rp/ale'
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'deoplete-plugins/deoplete-jedi'
" Writing documents
Plug 'tpope/vim-markdown'
call plug#end()

" Completion (deoplete)
source ~/.config/nvim/completion.vim

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
set background=dark
colorscheme solarized8_high
let g:indentLine_setColors = 0
" Disable embedded per-file nvim settings
set nomodeline
let g:markdown_folding=1
" Wrapping: disable visual and editing automatic wrapping ;
" instead, highlight the 80st column
set nowrap
set textwidth=0
let &colorcolumn = join(range(80,256),",")
