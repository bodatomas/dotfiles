"--- Plugins
call plug#begin('~/.local/share/nvim/site/autoload/plug')

"AUTOCOMPLETE INTELISENSE
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'jose-elias-alvarez/null-ls.nvim'
"HELPERS
Plug 'chun-yang/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
"GIT
Plug 'lewis6991/gitsigns.nvim'
Plug 'tpope/vim-fugitive'
"FILE UTILITIES
Plug 'kyazdani42/nvim-tree.lua'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/plenary.nvim'
"SNIPPETS
Plug 'SirVer/ultisnips'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'
Plug 'honza/vim-snippets'
"THEME
Plug 'itchyny/lightline.vim'
Plug 'sainnhe/gruvbox-material'
"SPECIFIC LANG
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

call plug#end()

"--- Backspace behavior like in any other editor
set backspace=indent,eol,start

"--- Map leader key
let mapleader = " "

"--- Setters
syntax on
set relativenumber
set autoindent
set noshowmode
set smartindent
set nu
set nowrap
set noswapfile
set noerrorbells
set hidden
set incsearch
set expandtab
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
set encoding=utf8
set laststatus=2
set scrolloff=10
set mouse=a

"--- Color scheme
colorscheme gruvbox-material
set background=dark

"-- Null_ls formating
nnoremap <leader>fa :lua vim.lsp.buf.formatting_sync()<CR>

"--- Auto tag config
let g:closetag_filenames = '*.html,*.xhtml,*.phtmli,*.php,*.jsx,*.vue'

"--- Telescope keymaps
nnoremap <C-p> :Telescope find_files<CR>
nnoremap <C-o> :Telescope live_grep<CR>
nmap <C-b> :e#<CR>

"--- NerdTree
"For icons need to install font
map <F7> :NvimTreeToggle<CR>

"--- Rainbow Parantheses
let g:rainbow_active = 1

"--- Split View Defaults
set splitbelow
set splitright

"--- Copy to global
vnoremap <C-c> "*y

"--- Split View Movement
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

"--- Lua script
lua <<EOF
require('tomas.init')
EOF
