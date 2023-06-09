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

    use 'mbbill/undotree'

    use({
      "kylechui/nvim-surround",
      tag = "*", -- Use for stability; omit to use `main` branch for the latest features
      config = function()
        require("nvim-surround").setup({
          -- Configuration here, or leave empty to use defaults
        })
      end
    })
    use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v2.x',
      requires = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},             -- Required
        {                                      -- Optional
        'williamboman/mason.nvim',
        run = function()
          pcall(vim.cmd, 'MasonUpdate')
        end,
      },
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},     -- Required
      {'hrsh7th/cmp-nvim-lsp'}, -- Required
      {'L3MON4D3/LuaSnip'},     -- Required
    }
  }

  use('tpope/vim-fugitive')
  use {
    'lewis6991/gitsigns.nvim',
      config = function()
        require('gitsigns').setup()
      end
    }

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

