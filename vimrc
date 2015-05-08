set nocompatible
filetype off
source ~/.vim/functions.vim
cd /home/david/development
let g:rainbow_active = 1

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
  Plugin 'scrooloose/nerdtree'
  Plugin 'luochen1990/rainbow'
  Plugin 'Lokaltog/vim-powerline'
  Plugin 'majutsushi/tagbar'

  " Colorschemes
  Plugin 'twerth/ir_black'
  Plugin 'davidhavard/paint_it_black'

  " Awesome extras
  Plugin 'mileszs/ack.vim'
  Plugin 'nathanaelkane/vim-indent-guides'
  Plugin 'tpope/vim-fugitive'
  Plugin 'scratch.vim'
  Plugin 'tpope/vim-surround'
  Plugin 'kien/ctrlp.vim'
  Plugin 'SirVer/ultisnips'
  Plugin 'joonty/vdebug.git'
  Plugin 'scrooloose/nerdcommenter'
  Plugin 'suan/vim-instant-markdown'

call vundle#end()

" Everything is stored in these files.]
" Make good use of them.
source ~/.vim/functions.vim
source ~/.vim/options.vim
source ~/.vim/mappings.vim
