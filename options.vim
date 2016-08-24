"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set encoding=utf-8

" Sets how many lines of history VIM has to remember
set history=700
" 'unnamed' to use the * register like unnamed register
" 'autoselect' to always put selected text into register *
if !has('nvim')
  set clipboard=unnamed,unnamedplus,exclude:cons\|linux
else
  set clipboard+=unnamedplus
endif

" Enable filetype plugins
filetype plugin on
filetype indent on
syntax enable 
set relativenumber

" Set to auto read when a file is changed from the outside
set autoread

" Line Numbers!
set number

" Disable dupe file checker in MBE as it is too slow.
let g:miniBufExplCheckDupeBufs = 0

" Set background
hi Normal          ctermfg=252 ctermbg=none

" Remove php variables from tagbar
let g:tagbar_type_php  = {
\ 'ctagstype' : 'php',
\ 'kinds'     : [
    \ 'i:interfaces',
    \ 'c:classes',
    \ 'd:constant definitions',
    \ 'f:functions',
    \ 'j:javascript functions:1'
\ ]
\ }

let g:rainbow_active = 1
let g:rainbow_conf = {
\   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
\   'ctermfgs': ['darkgray', 'darkblue', 'darkmagenta', 'darkcyan'],
\   'operators': '_,_',
\   'parentheses': [['(',')'], ['\[','\]'], ['{','}']]
\}

" Set php syntax checkers:
let g:syntastic_php_checkers=['php', 'phpmd']
let g:syntastic_disabled_filetypes=['less']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
set wildignore+=.git\*,.hg\*,.svn\*

"Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch 

" Don't redraw while executing macros (good performance config)
set lazyredraw 

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch 
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Add a bit extra margin to the left
set foldcolumn=1


set background=dark

" Set extra options when running in GUI mode
"if has("gui_running")
"    set guioptions=''	" Eliminate the GUI. (It's useless, but gVim > terminal Vim because X11 and full 24-bit colours.
"    set t_Co=256
"    set guitablabel=%M\ %t
"endif

" Set utf8, the one true encoding.
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git etc. anyway...
set nobackup
set nowb
set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=2
set tabstop=2

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent

set nowrap " DONT Wrap lines

" Remember info about open buffers on close
set viminfo^=%


""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

set mouse=a
if !has('nvim')
  set ttym=urxvt
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => GUI related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"set t_Co=256
"let g:molokai_original=1
"colorscheme molokai
"colorscheme ir_black 
colorscheme candystripe
let g:rehash256 = 1

set background=dark

set gfn=Monospace\ 10
set shell=/usr/bin/bash "zsh
set sidescroll=1

" tell it to use an undo file
set undofile
" set a directory to store the undo history
set undodir=~/.vim/vimundo/

try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry

"" vim Powerline.
let g:PowerLine_symbols = 'unicode'
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'unicode'
set guifont=Inconsolata\ for\ Powerline\ 10
" Quick Date insert.
iab <expr> dts strftime("%c")

" GVIM Settings
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions=r     "Right-hand scrollbar is always present
set guioptions=R     "Right-hand scrollbar is present when there is a vertically split window
set guioptions-=l    "Remove left-hand scrollbar
set guioptions-=L    "Remove left-hand scroll bar


" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

autocmd BufWinEnter,WinEnter term://* startinsert


