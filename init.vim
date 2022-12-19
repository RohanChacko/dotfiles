"
" NVIM RC
" 
" Author: Rohan Chacko
"

"
" Load Vim-Plug and plugins
"

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'plasticboy/vim-markdown'
Plug 'godlygeek/tabular'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'arcticicestudio/nord-vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

" LSP Support 
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason.nvim', { 'branch': 'main' }
Plug 'williamboman/mason-lspconfig.nvim', { 'branch': 'main' }

" Autocomplete
Plug 'hrsh7th/nvim-cmp', { 'branch': 'main' }
Plug 'hrsh7th/cmp-buffer', { 'branch': 'main' }
Plug 'hrsh7th/cmp-path', { 'branch': 'main' }
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'hrsh7th/cmp-nvim-lsp', { 'branch': 'main' }
Plug 'hrsh7th/cmp-nvim-lua', { 'branch': 'main' }

"  Snippets
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets', { 'branch': 'main' }

Plug 'VonHeikemen/lsp-zero.nvim', { 'branch': 'main' }
call plug#end()


" Set leader key
let mapleader=" "

luafile ~/dotfiles/nvim/lua/lsp.lua
luafile ~/dotfiles/nvim/lua/nerdtree.lua
luafile ~/dotfiles/nvim/lua/telescope.lua


" Google style guides python
source ~/dotfiles/nvim/google_python_style.vim
"
" Theme Settings
"

" Enable truecolor terminal
set termguicolors


" Set colorscheme to nord

colorscheme nord
" Activate nord airline theme
let g:airline_theme='nord'

" Set line numbering 
set number relativenumber
highlight LineNr guifg=#707b91 term=bold cterm=NONE ctermfg=Yellow ctermbg=NONE gui=NONE guibg=NONE

" Highlight screen column of cursor
set cursorline

" Clear screen column highlight
highlight clear cursorline

" Highlight cursor line number
highlight CursorLineNr guifg=bold



" Warp long lines
set wrap

" Ignore case when searching
set ignorecase

" Use uppercase if search string has uppercase
set smartcase

" Enable scrolling in tmux
set mouse=a

" Enable vim scrolling without cursor moving
" set so=999

" Press the j 2 times in row to switch to normal mode
inoremap jj <esc>

" Disable arrow keys in normal mode
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Set number system to decimal -- treat numbers with leading zero as decimal
" instead of default octal
set nrformats=

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

