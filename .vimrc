set nocompatible " be iMproved
filetype off " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'git://github.com/vim-scripts/taglist.vim'
Bundle 'git://github.com/scrooloose/nerdtree'
Bundle 'git://github.com/vim-scripts/nerdtree-execute'
Bundle 'git://github.com/tpope/vim-fugitive.git'
Bundle 'git://github.com/mattn/emmet-vim.git'
filetype plugin indent on

set number

" taglist settings
let Tlist_Use_Right_Window   = 1
let Tlist_Show_One_File  = 1

" theme settings
set t_Co=256
syntax enable
set background=dark
let g:solarized_termcolors=16
colorscheme solarized

" autoload NERDTree
autocmd VimEnter * NERDTree

" make vim fullscreen
if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window.
  set lines=999 columns=999
else
  " This is console Vim.
  if exists("+lines")
    set lines=999
  endif
  if exists("+columns")
    set columns=999
  endif
endif
