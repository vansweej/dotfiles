" enables syntax highlighting
syntax on

" Better colors
set termguicolors

" number of spaces in a <Tab>
set tabstop=4
set softtabstop=4
set expandtab

" enable autoindents
set smartindent

" number of spaces used for autoindents
set shiftwidth=4

" adds line numbers
set number relativenumber  " Show line number and relative line number

" columns used for the line number
set numberwidth=4

" enable column to show signs
set signcolumn=yes:1

" highlights the matched text pattern when searching
set incsearch
set nohlsearch

" open splits intuitively
set splitbelow
set splitright

" navigate buffers without losing unsaved work
set hidden

" start scrolling when 8 lines from top or bottom
set scrolloff=8

" Save undo history
set undofile

" Enable mouse support
set mouse=a

" case insensitive search unless capital letters are used
set ignorecase
set smartcase

" Set matching pairs of characters and highlight matching brackets
set matchpairs+=<:>,「:」,『:』,【:】,“:”,‘:’,《:》

" Break line at predefined characters
set linebreak
" Character to show before the lines that have been soft-wrapped
set showbreak=↪

" Minimum lines to keep above and below cursor when scrolling
set scrolloff=3

" Use mouse to select and resize windows, etc.
set mouse=nic  " Enable mouse in several mode
set mousemodel=popup  " Set the behaviour of mouse

set fileformats=unix,dos  " Fileformats to use for new files

" Auto-write the file based on some condition
set autowrite

set noshowmode

call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" plugins will go here

" color schemes
Plug 'gruvbox-community/gruvbox'
Plug 'haishanh/night-owl.vim'
Plug 'EdenEast/nightfox.nvim'  " nightfox nordfox palefox dayfox dawnfox duskfox
Plug 'sainnhe/everforest'  " hard medium soft
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }  " storm night day
Plug 'shaunsingh/nord.nvim'

" Telescope requires plenary to function
Plug 'nvim-lua/plenary.nvim'
" The main Telescope plugin
Plug 'nvim-telescope/telescope.nvim'
" An optional plugin recommended by Telescope docs
Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do': 'make' }

" Lightline
Plug 'itchyny/lightline.vim'
" indent blankline
Plug 'lukas-reineke/indent-blankline.nvim'

" vim-fugitive
Plug 'tpope/vim-fugitive', { 'tag': 'v3.6' }

" gitsigns
Plug 'lewis6991/gitsigns.nvim'

" LSP
Plug 'neovim/nvim-lspconfig'

" Autocompletion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'onsails/lspkind-nvim'

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }

" Rainbow brackets
Plug 'p00f/nvim-ts-rainbow'

" REPL support
Plug 'hkupty/iron.nvim'

" NerdTree
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'

" Conjure
Plug 'Olical/conjure'
Plug 'guns/vim-sexp'
Plug 'tpope/vim-sexp-mappings-for-regular-people'

" Comments
Plug 'terrortylor/nvim-comment'


call plug#end()

" declare your color scheme
" settings for tokyonight
let g:tokyonight_style = 'night'
let g:tokyonight_terminal_colors = 1
let g:tokyonight_italic_functions = 1
let g:tokyonight_sidebars = [ "qf", "vista_kind", "terminal", "packer" ]
" settings for everforest
let g:everforest_background = 'hard'

" To enable the lightline theme
let g:lightline = { 'colorscheme': 'nightowl' }

let g:nord_contrast = v:true
let g:nord_borders = v:false
let g:nord_disable_background = v:false
let g:nord_italic = v:false


colorscheme night-owl

" Use this for dark color schemes
set background=dark

" transparent bg
 autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE
 autocmd vimenter * hi EndOfBuffer guibg=NONE ctermbg=NONE


" enable plugins
lua require('vansweej')

" autoformat
autocmd BufWritePre *.jl lua vim.lsp.buf.formatting_sync(nil, 1000)
autocmd BufWritePre *.hs lua vim.lsp.buf.formatting_sync(nil, 1000)
autocmd BufWritePre *.rs lua vim.lsp.buf.formatting_sync(nil, 1000)

let g:conjure#mapping#prefix = ','


" keybindings

let mapleader = ' '

nnoremap <leader>h :wincmd h<Cr>
nnoremap <leader>j :wincmd j<Cr>
nnoremap <leader>k :wincmd k<Cr>
nnoremap <leader>l :wincmd l<Cr>

let g:NERDTreeChDirMode = 2  " Change cwd to parent node

let g:NERDTreeMinimalUI = 1  " Hide help text
let g:NERDTreeAutoDeleteBuffer = 1

nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>N :NERDTreeFind<CR>

nnoremap <leader>f :Telescope<Cr>
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

if has('nvim')
    tnoremap <Esc> <C-\><C-n>
    tnoremap <C-v><Esc> <Esc>
endif
