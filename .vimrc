set nocompatible           " be iMproved, required
filetype off               " required

set rtp+=~/.vim/bundle/Vundle.vim   " set the runtime path to include Vundle
call vundle#begin()                 " and initialize
Plugin 'gmarik/Vundle.vim' " let Vundle manage Vundle, required
Plugin 'altercation/vim-colors-solarized'
Plugin 'jalvesaq/R-Vim-runtime'
Plugin 'Vim-R-plugin'
Plugin 'ervandew/screen'

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

" Remove trailing whitespace when saving
autocmd BufWritePre * :%s/\s\+$//e

" sample settings for vim-r-plugin and screen.vim
" Installation
"       - Place plugin file under ~/.vim/
"       - To activate help, type in vim :helptags ~/.vim/doc
"       - Place the following vim conf lines in .vimrc
" Usage
"       - Read intro/help in vim with :h vim-r-plugin or :h screen.txt
"       - To initialize vim/R session, start screen/tmux, open some *.R file in
"       vim and then hit F2 key
"       - Object/omni completion command CTRL-X CTRL-O
"       - To update object list for omni completion, run :RUpdateObjList
" My favorite Vim/R window arrangement
"       tmux attach
"       Open *.R file in Vim and hit F2 to open R
"       Go to            R pane and create another pane with C-a %
"       Open second R session in newL9w pane
"       Go to vim pane and open a new viewport with :split *.R
" Useful tmux commands
"       tmux new -s <myname>       start new session with a specific name
"       tmux ls (C-a-s)            list tmux session
"       tmux attach -t <ind>       attach to specific session
"       tmux kill-session -t <id>  kill specific session
"       C-a-: kill-session         kill a session
"       C-a %                      split pane vertically
"       C-a "                      split pane horizontally
"       C-a-o                      jump cursor to next pane
"       C-a C-o                    swap panes
"       C-a-: resize-pane -L 10    resizes  pane by 10 to left (L R U D)
" Corresponding Vim commands
"       :split or   :vsplit     split viewport
"       C-w-w                   jump cursor to nextxt pane-
"       C-w-r                   swap viewports
"       C-w C-++                resize viewports to equal split
"       C-w 10+                 increase size of current pane by value

" To open R in terminal rather than RGui (only necessary on OS X)
" let vimrplugin_applescript = 0
"  let vimrplugin_screenplugin = 0
"  For tmux support
let g:ScreenImpl = 'Tmux'
let vimrplugin_screenvsplit = 1 " For vertical tmux split
let g:ScreenShellInitialFocus = 'shell'
" instruct to use your own .screenrc file
let g:vimrplugin_noscreenrc = 1
" For integration of r-plugin with screen.vim
let g:vimrplugin_screenplugin = 1
" Don't use conque shell if installed
let vimrplugin_conqueplugin = 0
" map the letter 'r' to send visually selected lines to R
let g:vimrplugin_map_r = 1
" see R documentation in a Vim buffer
let vimrplugin_vimpager = "no"
"set expandtab
"set shiftwidth=4
"set tabstop=8
" start R with F2 key
map <F2> <Plug>RStart
imap <F2> <Plug>RStart
vmap <F2> <Plug>RStart
" send selection to R with space bar
vmap <Space> <Plug>RDSendSelection
" send line to R with space bar
nmap <Space> <Plug>RDSendLine
