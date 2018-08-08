" https://qiita.com/tanabee/items/e2064c5ce59c85915940

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Bundle 'chase/vim-ansible-yaml'
Bundle 'kchmck/vim-coffee-script'
Plugin 'elixir-lang/vim-elixir'
Plugin 'slashmili/alchemist.vim'
Plugin 'gmarik/Vundle.vim'
Plugin 'slim-template/vim-slim.git'

call vundle#end()

filetype plugin indent on

set mouse-=v
set ai
syntax on
set expandtab
set undodir=~/.vim/undodir
set clipboard=unnamed,autoselect
