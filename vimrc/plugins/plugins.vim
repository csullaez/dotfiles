call plug#begin('~/.vim/plugged')
" Any valid git URL is allowed
" " Multiple Plug commands can be written in a single line using | separators
" "Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle'  }
" " Plugin outside ~/.vim/plugged
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" " Initialize plugin system
Plug 'terryma/vim-multiple-cursors'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'troydm/zoomwintab.vim'  
" "Plug 'Valloric/MatchTagAlways'
Plug 'preservim/nerdcommenter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"
"
""Temas para vim
Plug 'tomasiser/vim-code-dark'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
"Plug 'rakr/vim-one' 
""Plug 'dracula/vim', { 'as': 'dracula'  }


Plug 'itchyny/vim-gitbranch' 
Plug 'tpope/vim-fugitive'
Plug 'Sirver/ultisnips'
"Complementos para Git y GitLens para vim
""Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'airblade/vim-gitgutter'
" Plug 'APZelos/blamer.nvim'
" Plug 'zivyangll/git-blame.vim'
" Plug 'rhysd/git-messenger.vim'
"Complements para carpetas e iconos
""Plug 'Shougo/defx.nvim'
"Plug 'ryanoasis/vim-devicons'
""Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

"Complements for typing
" Plug 'jiangmiao/auto-pairs' "Complemento para Cerrar parentesis
Plug 'alvan/vim-closetag' "React o HTML complemento para etiquetas
Plug 'tpope/vim-surround'
"
"Plug 'yggdroot/indentline' "Para indentaciones
Plug 'easymotion/vim-easymotion' "Para navegar buscando letras
"" Data Base
Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-packager'
Plug 'bandagriss/vim-dadbod-ui'

"Complement for Scroll
Plug 'yuttie/comfortable-motion.vim'
" Plug 'psliwka/vim-smoothie'

" Plugin for REACT
Plug 'mlaursen/vim-react-snippets'
Plug 'dikiaap/minimalist'
Plug 'tyrannicaltoucan/vim-quantum'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
" DART
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'

" Plugins NEOVIM
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} "Instalar javascript, typescript, etc...
Plug 'lewis6991/gitsigns.nvim'
Plug 'nvim-lua/plenary.nvim'
" Plug 'projekt0n/github-nvim-theme'
" Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'EdenEast/nightfox.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' } " pacman -S ripgrep

" Plug 'ryanoasis/vim-devicons' Icons without colours
Plug 'akinsho/bufferline.nvim', { 'tag': 'v3.*' }

Plug 'onsails/lspkind-nvim'

Plug 'tzachar/cmp-tabnine', { 'do': './install.sh' }
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-calc'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/cmp-nvim-lua'
" For ultisnips users.
Plug 'quangnguyen30192/cmp-nvim-ultisnips'

" For snippy users.
Plug 'dcampos/nvim-snippy'
Plug 'dcampos/cmp-snippy'
" For luasnip users.
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
" :MasonUpdate updates registry contents
call plug#end()

source ~/dotfiles/vimrc/plugins/coc/coc.vim
source ~/dotfiles/vimrc/plugins/fzf/fzf.vim
source ~/dotfiles/vimrc/plugins/git/git.vim
source ~/dotfiles/vimrc/plugins/database/db.vim

