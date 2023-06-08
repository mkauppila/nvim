-- Note: Packer Git repo has been cloned to
--       ~/.local/share/nvim/site/pack/packer/start/packer.nvim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Dracula theme for styling
    use 'Mofiqul/dracula.nvim'

    -- Lualine information / Status bar
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- Mason lsp config
    use "williamboman/mason.nvim"
    use "williamboman/mason-lspconfig.nvim"
    use "neovim/nvim-lspconfig"

    -- Hrsh7th Code Completion Suite
    use 'hrsh7th/nvim-cmp' 
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'hrsh7th/cmp-vsnip'                             
    use 'hrsh7th/cmp-path'                              
    use 'hrsh7th/cmp-buffer'                            
    use 'hrsh7th/vim-vsnip'

     -- File explorer tree
     use {
         'nvim-tree/nvim-tree.lua',
         requires = {
             'nvim-tree/nvim-web-devicons', -- optional, for file icons
         },
     }

     -- DAP for debugging
     use 'mfussenegger/nvim-dap'
     -- UI for DAP
     use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }

     -- Treesitter
     use {
         -- recommended packer way of installing it is to run this function, copied from documentation
         'nvim-treesitter/nvim-treesitter',
         run = function()
             local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
             ts_update()
         end,
     }

     -- Telescope used to fuzzy search files
     use {
         'nvim-telescope/telescope.nvim', tag = '0.1.0',
         requires = { {'nvim-lua/plenary.nvim'} }
     }

     use "lukas-reineke/indent-blankline.nvim"
 end)

