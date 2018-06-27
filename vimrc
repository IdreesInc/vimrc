"------ Personal Vim Settings ------
syntax on
set ignorecase
set autoindent
set incsearch
let mapleader=" "
map <Leader> <Plug>(easymotion-prefix)

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
Plugin 'tpope/vim-fugitive'
Plugin 'justinmk/vim-sneak'

call vundle#end()
filetype plugin indent on

"------ Plugin Settings ------
" let g:ale_set_highlights = 0 " ALE
" autocmd vimenter * NERDTree | wincmd w " NERDTree 

"------ Status Line ------
set laststatus=2
set statusline =
" File description
set statusline +=%f\ %h%m%r%w
" Filetype
set statusline +=%y                                                  
" Name of the current branch (needs fugitive.vim)
set statusline +=\ %{fugitive#statusline()}
" Date of the last time the file was saved
set statusline +=\ %{strftime(\"[%m/%d/%y\ %T]\",getftime(expand(\"%:p\")))} 
" Right align
set statusline +=%=
" Lines / total lines
set statusline+=%l/%L
" Percent through file
set statusline+=\ %P\ 
