"plugins
set mouse=a
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
set undofile
set cursorline
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'sickill/vim-monokai'
Plugin 'abudden/taghighlight-automirror'
Plugin 'jiangmiao/auto-pairs'
Plugin 'vim-scripts/restore_view.vim'

call vundle#end()
filetype plugin indent on

"colours
syntax on
colorscheme monokai
set background=dark

"disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

"airline
let g:airline_theme='molokai'
set laststatus=2
  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif
  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ''

"misc
set relativenumber
set nohlsearch
set cc=80

"tabs
set smarttab
set expandtab
set softtabstop=4
set shiftwidth=4
set tabstop=4
set autoindent

"remaps
imap jk <Esc>
imap kj <Esc>

"splits
set splitright
set splitbelow
set hidden

" leaders
map <Leader>t :UpdateTypesFile<CR>
"netrw mode
let mapleader = " "
nnoremap <leader>pv :Ex<CR>
