vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- note: to fix the icons on macos 
-- follow this https://stackoverflow.com/q/72899162

local TAB_WIDTH = 4
vim.bo.tabstop = TAB_WIDTH
vim.bo.shiftwidth = TAB_WIDTH
vim.bo.expandtab = true


require('packer-config')
require('mason-config')
require('gopls')
require('code-completion')
require('nvim-tree-config')
require('keymaps')
require('debug-go-delve')
require('theme-dracula')
require('treesitter-config')
require('lualine-config')
require('telescope-config')

-- this seems not to work? or maybe I should also do PackerSync
vim.cmd([[
  augroup packer_user_config
  autocmd!
  autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

