"------ Personal Vim Settings ------
syntax on
set ignorecase
set autoindent
" set number

"------ Vundle ------
set nocompatible
filetype off

if has("win32")
    set rtp+=$HOME/.vim/bundle/Vundle.vim/
    call vundle#begin('$HOME/.vim/bundle/')
else
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
endif

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'xuyuanp/nerdtree-git-plugin'
Plugin 'w0rp/ale'
Plugin 'easymotion/vim-easymotion'

call vundle#end()
filetype plugin indent on

"------ Plugin Settings ------
let g:ale_set_highlights = 0 " ALE
" autocmd vimenter * NERDTree | wincmd w " NERDTree 
