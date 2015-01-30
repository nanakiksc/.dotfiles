set nocompatible           " be iMproved, required
filetype off               " required

set rtp+=~/.vim/bundle/Vundle.vim   " set the runtime path to include Vundle
call vundle#begin()                 " and initialize
Plugin 'gmarik/Vundle.vim' " let Vundle manage Vundle, required

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()          " required
filetype plugin indent on  " Autoindent according to the file-type, required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Auto Pairs, remapping of Fast Wrap shortcut
let g:AutoPairsShortcutFastWrap='<C-e>'

" Molokai colorscheme for color terminals
set t_Co=256
let g:rehash256=1
"let g:molokai_original=1
colorscheme molokai

set title                  " Set the terminal title
set t_ZH=[3m             " Allow italics
set t_ZR=[23m
set cursorline             " Highlight current line
set number                 " Show line numbers
set incsearch              " Do incremental searches
set hlsearch               " Highlight search terms
set ignorecase             " Ignore case when searching
set smartcase              " Smart cases when searching
set scrolloff=2            " Keep 2 context lines above or below
set wildmenu               " File name autocompletion with TAB
set wildmode=list:longest,full
set history=1000           " Keep a longer history (default is 20)
set foldmethod=syntax      " Enable syntax folding
syntax on                  " Default syntax highlighting
runtime macros/matchit.vim " Extended % matching (if/elsif/else/end)

" Set default TAB and indentations to be 4 spaces long
set expandtab
set shiftwidth=4
set softtabstop=4
autocmd FileType c setlocal shiftwidth=3 softtabstop=3
autocmd FileType r setlocal shiftwidth=3 softtabstop=3
autocmd FileType html setlocal shiftwidth=2 softtabstop=2
autocmd FileType python setlocal shiftwidth=4 softtabstop=4
