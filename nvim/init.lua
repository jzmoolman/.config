if require('first_load')() then
    return
end

vim.g.mapleader = ' '

-- Sensible defaults
require('settings')

-- vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile'    -- Auto compile when there are changes in plugins.lua

require('plugins')

require('keymappings')

require('lsp_lua')

require('config')
