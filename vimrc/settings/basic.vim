set clipboard=unnamed
set ma
set encoding=UTF-8
set title
set nocompatible
set number
set relativenumber                                                              "Show numbers relative to current line
set history=500                                                                 "Store lots of :cmdline history
"set fileencoding=utf-8 
set mouse=a "Use mouse all
"set laststatus=2
"set nowrap
""setlocal formatoptions=wat
set cursorline
set colorcolumn=150
set tabstop=2
set shiftwidth=2
set cmdheight=2
set softtabstop=2
set updatetime=300
set shiftround
set expandtab
set hidden
set ignorecase
set smartcase
set spelllang=en,es
set foldmethod=syntax
"set foldnestmax=10
set nofoldenable
set foldlevel=1
""set showmatch
set splitbelow
set splitright
syntax on
set noswapfile
set nobackup
set nowb
set autoread
set smartindent
set noshowmode
"Theme
"set background=dark
"syntax enable
"" This is only necessary if you use "set termguicolors".
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

set t_Co=256
" "set termguicolors
" " for vim 8
if (has("termguicolors"))
     set termguicolors     " enable true colors support
endif
