execute pathogen#infect()
syntax on
filetype plugin indent on


set nocompatible
filetype off
let g:rainbow_active = 1

if !has('nvim')
  set rtp+=~/.vim/bundle/Vundle.vim

  call vundle#begin()

    " Vundles...
    " Base Vundle
    Plugin 'gmarik/Vundle.vim'
    "=====================

    " Syntaxes
    Plugin 'tpope/vim-markdown'
    Plugin 'php.vim'
    Plugin 'pangloss/vim-javascript'
    Plugin 'xmledit'
    Plugin 'scrooloose/syntastic'
    Plugin 'kchmck/vim-coffee-script'
    Plugin 'digitaltoad/vim-jade'
    Plugin 'groenewege/vim-less'
    Plugin 'skammer/vim-css-color'
    Plugin 'hail2u/vim-css3-syntax'

    " GUI Enhancements
    Plugin 'scrooloose/vim-statline'
    Plugin 'scrooloose/nerdtree'
    Plugin 'Xuyuanp/nerdtree-git-plugin'
    Plugin 'luochen1990/rainbow'
    Plugin 'Lokaltog/vim-powerline'
    Plugin 'majutsushi/tagbar'

    " Colorschemes
    Plugin 'twerth/ir_black'
    Bundle 'tomasr/molokai'
    "Plugin 'davidhavard/paint_it_black'

    " Awesome extras
    Plugin 'mileszs/ack.vim'
    Plugin 'nathanaelkane/vim-indent-guides'
    Plugin 'tpope/vim-fugitive'
    Plugin 'scratch.vim'
    Plugin 'tpope/vim-surround'
    Plugin 'kien/ctrlp.vim'
    Bundle 'SirVer/ultisnips'
    Bundle 'honza/vim-snippets'
    Plugin 'joonty/vdebug.git'
    Plugin 'scrooloose/nerdcommenter'
    Plugin 'airblade/vim-gitgutter'
    Plugin 'suan/vim-instant-markdown'

  call vundle#end()
endif
if has('nvim')

  call plug#begin('~/.vim/plugged')
  Plug 'junegunn/seoul256.vim'
  Plug 'junegunn/vim-easy-align'
  
  " On-demand loading
  Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

  " Group dependencies, vim-snippets depends on ultisnips
  Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
  call plug#end();
endif
" Everything is stored in these files.]
" Make good use of them.
source ~/.vim/functions.vim
source ~/.vim/options.vim
source ~/.vim/mappings.vim
