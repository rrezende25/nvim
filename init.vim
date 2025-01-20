call plug#begin()
" Themes:
Plug 'sainnhe/sonokai'
" Snn
Plug 'L3MON4D3/LuaSnip', {'tag': 'v2.*', 'do': 'make install_jsregexp'}
Plug 'https://github.com/rafamadriz/friendly-snippets'
Plug 'https://github.com/honza/vim-snippets'
Plug 'https://github.com/saadparwaiz1/cmp_luasnip'

" line and icons:
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicons'

" file managing
Plug 'stevearc/oil.nvim' 
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'branch': '0.1.x' } 

" Syntax Linter
" Plug 'sheerun/vim-polyglot'
" Plug 'dense-analysis/ale'

" Completion:
Plug 'honza/vim-snippets'
" Lsp
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
" Tmux
"Plug 'https://github.com/christoomey/vim-tmux-navigator'

Plug 'numToStr/Comment.nvim'
Plug 'windwp/nvim-autopairs'
Plug 'https://github.com/lambdalisue/suda.vim'
call plug#end()
let g:suda_smart_edit = 1



" Global Sets """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on            " Enable syntax highlight
set nu               " Enable line numbers
set tabstop=4        " Show existing tab with 4 spaces width
set softtabstop=4    " Show existing tab with 4 spaces width
set shiftwidth=4     " When indenting with '>', use 4 spaces width
set expandtab        " On pressing tab, insert 4 spaces
set smarttab         " insert tabs on the start of a line according to shiftwidth
set smartindent      " Automatically inserts one extra level of indentation in some cases
set hidden           " Hides the current buffer when a new file is openned
set incsearch        " Incremental search
set ignorecase       " Ingore case in search
set smartcase        " Consider case if there is a upper case character
set scrolloff=4      " Minimum number of lines to keep above and below the cursor
set signcolumn=yes   " Add a column on the left. Useful for linting
set cmdheight=2      " Give more space for displaying messages
set updatetime=100   " Time in miliseconds to consider the changes
set encoding=utf-8   " The encoding should be utf-8 to activate the font icons
set nobackup         " No backup files
set nowritebackup    " No backup files
set splitright       " Create the vertical splits to the right
set splitbelow       " Create the horizontal splits below
set mouse=a          " Enable mouse support
filetype on          " Detect and set the filetype option and trigger the FileType Event
filetype plugin on   " Load the plugin file for the file type, if any
filetype indent on   " Load the indent file for the file type, if any





" Remaps #####################################################################
let mapleader = " "
nnoremap U <C-r>
" Create splits
nmap <leader>aj :split<CR>
nmap <leader>al :vsplit<CR>
" nmap th :split<CR>
" nmap tv :vsplit<CR>
" Close splits and others
nmap <leader>aq :q<CR>
" nmap tt :q<CR>
nnoremap <leader>O <Cmd>Oil<CR>
" Telescope ######################
nnoremap <leader>f <cmd>Telescope find_files<cr>
nnoremap <C-b> <cmd>Telescope buffers<cr>
nnoremap <M-m> <cmd>:lua require("harpoon.ui").toggle_quick_menu()<CR>
" Shortcuts for split navigation
map <space>h <C-w>h
map <space>j <C-w>j
map <space>k <C-w>k
map <space>l <C-w>l










" Themes config ##################################################################### 
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

let g:sonokai_style = 'andromeda'
let g:sonokai_enable_italic = 1
let g:sonokai_disable_italic_comment = 0
let g:sonokai_diagnostic_line_highlight = 1
let g:sonokai_current_word = 'bold'
colorscheme sonokai




lua << EOF
require("plugins.lsps")
require("plugins.lsnip")
require("plugins.nvim-cmp")
require("plugins.mason")
require("plugins.lspconfig")
require("plugins.lualine_conf")
require("plugins.comment_conf")
require("plugins.oil_conf")
require("plugins.telescope_conf")
require('nvim-autopairs').setup({ignored_next_char = "[%w%.]"})
EOF
