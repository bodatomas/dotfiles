"--- Plugins
call plug#begin('~/.local/share/nvim/site/autoload/plug')

"AUTOCOMPLETE INTELISENSE
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
"HELPERS
Plug 'chun-yang/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
"FILE UTILITIES
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ryanoasis/vim-devicons'
"SNIPPETS
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
"THEME
Plug 'rafi/awesome-vim-colorschemes'
Plug 'itchyny/lightline.vim'
"SPECIFIC LANG
"javascript
Plug 'pangloss/vim-javascript'
"php
Plug 'captbaritone/better-indent-support-for-php-with-html'


call plug#end()

"--- Backspace behavior like in any other editor
set backspace=indent,eol,start

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
set nohlsearch
set incsearch
set expandtab
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
set encoding=utf8
set laststatus=2
set scrolloff=10

"Mouse usage
set mouse=a

"--- Color scheme
colorscheme onedark
set background=dark
let g:onedark_terminal_italics=1
hi Normal guibg=NONE ctermbg=NONE
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

"--- Auto tag config
let g:closetag_filenames = '*.html,*.xhtml,*.phtmli,*.php,*.jsx,*.vue'

"--- Fzf ctrl-o
nnoremap <C-p> :Files<CR>
nmap <C-b> :e#<CR>
"set ignore files in .zshrc
"export FZF_DEFAULT_COMMAND='ag --nocolor --ignore={'node_modules','bower_components'} -g ""'
"brew install the_silver_searcher

"--- Coc binds
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)

"Coc settings
imap <C-l> <Plug>(coc-snippets-expand)
"python for snippets: python3 -m pip install --user --upgrade pynvim
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ 'coc-json',
  \ 'coc-tsserver',
  \ 'coc-css',
  \ 'coc-html',
\]

"--- C++ build command for mac
autocmd FileType cpp nnoremap <leader>fn :!g++ *.cpp -o program && open -a Terminal './program'<CR>

"--- Copy to global
vnoremap <C-c> "*y

"--- NerdTree
"For icons need to install font
map <F7> :NERDTreeToggle<CR>

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Navigate snippet placeholders using tab
let g:coc_snippet_next = '<Tab>'
let g:coc_snippet_prev = '<S-Tab>'

" Use enter to accept snippet expansion
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<CR>"

"--- Rainbow Parantheses
let g:rainbow_active = 1

"--- Split View Defaults
set splitbelow
set splitright

"--- Split View Movement
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>
