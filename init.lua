require('plugins')

vim.cmd([[
  augroup packer_user_config
  autocmd!
  autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

local TAB_WIDTH = 4
vim.bo.tabstop = TAB_WIDTH
vim.bo.shiftwidth = TAB_WIDTH
vim.bo.expandtab = true


