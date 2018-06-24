"------ Personal Vim Settings ------
syntax on
set ignorecase
set autoindent
set number

"------ Vundle ------
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'itchyny/lightline.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'xuyuanp/nerdtree-git-plugin'
Plugin 'w0rp/ale'

call vundle#end()
filetype plugin indent on

"------ Plugin Settings ------
autocmd vimenter * NERDTree | wincmd w " For NERDTree
set laststatus=2 " For LightLine
let g:ale_set_highlights = 0
