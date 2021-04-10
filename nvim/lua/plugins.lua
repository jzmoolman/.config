return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'tpope/vim-scriptease'

    --  colorschemes
    use 'arcticicestudio/nord-vim'
    use 'sainnhe/gruvbox-material'
    use 'norcalli/nvim-colorizer.lua'

    -- Fuzzy finder
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }

    -- LSP and completion
    use { 'neovim/nvim-lspconfig' }
    --use { 'nvim-lua/completion-nvim' }
    use { 'hrsh7th/nvim-compe' }

    -- Lua development
    use { 'tjdevries/nlua.nvim' }

    use 'glepnir/galaxyline.nvim'

    -- Vim dispatch
    use { 'tpope/vim-dispatch' }

    -- Fugitive for Git
    use { 'tpope/vim-fugitive' }

end)
