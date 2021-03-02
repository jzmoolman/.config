    " Options
    set shell=/bin/zsh
    set guicursor=
    set relativenumber
    set nu
    set noerrorbells visualbell t_vb=
    set tabstop=4
    set softtabstop=4
    set shiftwidth=4
    set expandtab
    set smartindent
    set nowrap
    set noswapfile
    set nobackup
    set undodir=$HOME/.config/nvim/undodir
    set undofile
    set incsearch
    set termguicolors
    set scrolloff=8
    set signcolumn=yes
    set cursorline
    "set statusline=%<%f\ %h%m%r%{kite#statusline()}%=%-14.(%l,%c%V%)\ %P
    set laststatus=2
    set backspace=indent,eol,start
    set list
    set listchars=trail:·,precedes:«,extends:»,space:·
    set splitright
    set splitbelow
    set colorcolumn=80

    call plug#begin('~/.vim/plugged') 
    
    " Packages -
    Plug 'tpope/vim-scriptease'
  
    Plug 'neovim/nvim-lspconfig'
    Plug 'nvim-lua/completion-nvim'
    " Neovim Tree shitter
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'nvim-treesitter/playground'
    
    " Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    " Plug 'junegunn/fzf.vim'
    
    " telescope requirements...
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'

    " Packages - colorschemes 
    Plug 'arcticicestudio/nord-vim'
    
    call plug#end()

    colorscheme nord

    let mapleader = " "
    
    " lsp
    set completeopt=menuone,noinsert,noselect

    nnoremap <leader>vd :lua vim.lsp.buf.definition()<CR>
    nnoremap <leader>vi :lua vim.lsp.buf.implementation()<CR>
    nnoremap <leader>vsh :lua vim.lsp.buf.signature_help()<CR>
    nnoremap <leader>vrr :lua vim.lsp.buf.references()<CR>
    nnoremap <leader>vrn :lua vim.lsp.buf.rename()<CR>
    nnoremap <leader>vh :lua vim.lsp.buf.hover()<CR>
    nnoremap <leader>vca :lua vim.lsp.buf.code_action()<CR>
    nnoremap <leader>vsd :lua vim.lsp.util.show_line_diagnostics(); vim.lsp.util.show_line_diagnostics()<CR>

    let g:completion_matching_strategy_list = ['exact','substring','fuzzy']
    lua require'lspconfig'.pyright.setup{ on_attach=require'completion'.on_attach }
    
   " TreeSitter
    
lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = {"python","c","rust"}, --- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              --- false will disable the whole extension
    disable = { "c", "rust" },  --- list of language that will be disabled
  },
}
EOF
    
    " telescope
    nnoremap <Leader>pf :lua require('telescope.builtin').find_files()<CR>

    #TEST GIT
