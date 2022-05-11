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
"" Code completion and type checking
Plug 'w0rp/ale'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'Vimjas/vim-python-pep8-indent'
" Writing documents
Plug 'tpope/vim-markdown'
Plug 'masukomi/vim-markdown-folding'
Plug 'junegunn/goyo.vim'
call plug#end()

" Completion (deoplete)
source ~/.config/nvim/completion.vim

set spelllang=de,en,fr
let mapleader = " "
" No mouse selection to clipboard, but multi-line selection possible
set mouse=a
" Mouse selection to clipboard, but no multi-line selection without spaces
"set mouse=r
" Disable flawed "smart" indentation reformating
set autoindent nosmartindent nocindent indentexpr=
" Why on earth replacing tabs by spaces ??
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
set linebreak
set nowrap
set textwidth=0
let &colorcolumn = join(range(80,256),",")
" Goyo mode
function! s:goyo_enter()
	set wrap
endfunction
function! s:goyo_leave()
	set nowrap
endfunction
autocmd! User GoyoEnter call <SID>goyo_enter()
autocmd! User GoyoLeave call <SID>goyo_leave()
noremap <leader>g :Goyo<CR>
" Default to case-insensitive research, except if there is an upper-case
" letter.
set ignorecase
set smartcase
