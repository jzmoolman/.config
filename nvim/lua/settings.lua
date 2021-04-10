local utils = require('utils')

local cmd = vim.cmd
local indent = 4

cmd 'syntax enable'
cmd 'filetype plugin indent on'

utils.opt('b', 'expandtab', true)                           -- Use spaces instead of tabs
utils.opt('b', 'shiftwidth', indent)                        -- Size of an indent
utils.opt('b', 'smartindent', true)                         -- Insert indents automatically
utils.opt('b', 'tabstop', indent)                           -- Number of spaces tabs count for
utils.opt('b', 'swapfile', false)
utils.opt('o', 'guicursor', '')
utils.opt('o', 'hidden', true)                              -- Enable modified buffers in background
-- opt('o', 'ignorecase', true)                          -- Ignore case
-- opt('o', 'joinspaces', false)                         -- No double spaces with join after a dot
utils.opt('o', 'scrolloff', 8 )                             -- Lines of context
utils.opt('o', 'shiftround', true)                          -- Round indent
utils.opt('o', 'sidescrolloff', 8 )                         -- Columns of contextutils.
-- utils.opt('o', 'shiftround', true)
utils.opt('o', 'smartcase', true)                           -- Don't ignore case with capitals
utils.opt('o', 'splitbelow', true)                          -- Put new windows below current
utils.opt('o', 'splitright', true)                          -- Put new windows right of current
-- utils.opt('o', 'termguicolors', true)                       -- True color support
utils.opt('o', 'incsearch', true)

-- opt('o', 'wildmode', 'list:longest')                  -- Command-line completion mode
utils.opt('w', 'colorcolumn', '80')
utils.opt('w', 'signcolumn', 'yes')
utils.opt('w', 'list', true)                                -- Show some invisible characters (tabs...)
utils.opt('w', 'listchars','trail:·,precedes:«,extends:»,space:·')
utils.opt('w', 'number', true)                              -- Print line number
utils.opt('w', 'relativenumber', true)                      -- Relative line numbers
utils.opt('w', 'wrap', false)
utils.opt('o', 'clipboard','unnamed,unnamedplus')

-- Highlight on yank
vim.cmd 'au TextYankPost * lua vim.highlight.on_yank {on_visual = false}'

--set cursorline
--set laststatus=2
--set backspace=indent,eol,start
