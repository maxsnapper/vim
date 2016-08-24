set nocompatible
filetype off

call plug#begin('~/.vim/plugged')
"Plug 'junegunn/seoul256.vim'
"Plug 'junegunn/vim-easy-align'
"
"" On-demand loading
"Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"
"" Languages and Syntaxes 
"Plug 'tpope/vim-markdown'
"Plug 'php.vim'
"Plug 'pangloss/vim-javascript'
"Plug 'xmledit'
"Plug 'scrooloose/syntastic'
"Plug 'digitaltoad/vim-jade'
"Plug 'groenewege/vim-less'
"Plug 'hail2u/vim-css3-syntax'
"Plug 'burnettk/vim-angular'
"
"" GUI Enhancements
"Plug 'scrooloose/vim-statline'
"Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'luochen1990/rainbow'
"Plug 'Lokaltog/vim-powerline'
"Plug 'majutsushi/tagbar'
"
"" Colorschemes
""Plug 'twerth/ir_black'
""Plug 'tomasr/molokai'
"
"" Awesome extras
"Plug 'nathanaelkane/vim-indent-guides'
"Plug 'tpope/vim-fugitive'
"Plug 'scratch.vim'
"Plug 'tpope/vim-surround'
"Plug 'joonty/vdebug'
"Plug 'airblade/vim-gitgutter'
"Plug 'vim-php/tagbar-phpctags.vim'
"
"Plug 'Shougo/unite.vim'
"Plug 'Shougo/vimfiler.vim'
"Plug 'Shougo/vimproc.vim', {'do' : 'make'}
"Plug 'tpope/vim-abolish'


" Syntaxes
  Plug 'tpope/vim-markdown'
  Plug 'php.vim'
  Plug 'pangloss/vim-javascript'
  Plug 'xmledit'
  Plug 'scrooloose/syntastic'
  Plug 'kchmck/vim-coffee-script'
  Plug 'digitaltoad/vim-jade'
  Plug 'groenewege/vim-less'
  Plug 'ap/vim-css-color'
  Plug 'hail2u/vim-css3-syntax'
  Plug 'burnettk/vim-angular'
  Plug 'OrangeT/vim-csharp'
  Plug 'leafgarland/typescript-vim'

  " Enhancements
  Plug 'Shougo/unite.vim'
  Plug 'Shougo/unite-session'
  Plug 'Shougo/vimproc.vim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'lilydjwg/colorizer'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-abolish'
  Plug 'scratch.vim'
  Plug 'sirver/ultisnips'
  Plug 'honza/vim-snippets'
  Plug 'xolox/vim-misc'


  " Color schemes
  Plug 'chriskempson/base16-vim'
  Plug 'davidhavard/base16-vim'


call plug#end()

" Everything is stored in these files.
" Make good use of them.
" source ~/.vim/functions.vim
" source ~/.vim/options.vim
" source ~/.vim/mappings.vim
source ~/.vim/func.vim
source ~/.vim/let.vim
source ~/.vim/map.vim
source ~/.vim/au.vim
