syntax on " enable highlighting
set number " enable line numbers

set backspace=indent,eol,start " let backspace delete over lines
set autoindent " enable auto indentation of lines
set smartindent " allow vim to best-effort guess the indentation
set pastetoggle=<F2> " enable paste mode (more on this below)

" set indent for 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab

" enable mouse support
set mouse=a


set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'preservim/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'airblade/vim-gitgutter'
Plugin 'mattn/emmet-vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'pangloss/vim-javascript'
Plugin 'leafgarland/typescript-vim'
call vundle#end()            " required
filetype plugin indent on    " required


" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * silent NERDTreeMirror

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif
