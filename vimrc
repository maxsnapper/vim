set nocompatible
filetype off

cd /home/david/development/src
let g:rainbow_active = 1

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" Vundles...
" Base Vundle
Bundle 'gmarik/vundle'
"=====================

" Syntaxes
Bundle 'tpope/vim-markdown'
Bundle 'php.vim'
Bundle "pangloss/vim-javascript"
Bundle 'xmledit'
Bundle 'scrooloose/syntastic'
Bundle 'kchmck/vim-coffee-script'
Bundle 'digitaltoad/vim-jade'
Bundle 'groenewege/vim-less'
Bundle 'skammer/vim-css-color'
Bundle 'hail2u/vim-css3-syntax'

" GUI Enhancements
Bundle 'scrooloose/nerdtree'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'luochen1990/rainbow'
Bundle 'Lokaltog/vim-powerline'

" Requires Python (and installation of Jedi)
Bundle 'davidhalter/jedi-vim'

" Sadly, tagbar just won't work on windows.
if !has("win_16") && !has("win_32")
    Bundle 'majutsushi/tagbar'
endif

" Important Colorschemes
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'altercation/vim-colors-solarized'
Bundle 'wgibbs/vim-irblack'

" Awesome extras
Bundle 'mileszs/ack.vim'
Bundle 'c9s/bufexplorer'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'tpope/vim-fugitive'
Bundle 'godlygeek/tabular'
Bundle 'scratch.vim'
Bundle 'tpope/vim-surround'
Bundle 'kien/ctrlp.vim'
Bundle 'SirVer/ultisnips'
Bundle 'joonty/vdebug.git'
Bundle 'scrooloose/nerdcommenter.git'

" Everything is stored in these files.]
" Make good use of them.
source ~/.vim/functions.vim
source ~/.vim/options.vim
source ~/.vim/mappings.vim
