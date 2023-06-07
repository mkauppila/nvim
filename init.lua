vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- note: to fix the icons on macos 
-- follow this https://stackoverflow.com/q/72899162

-- move to folder vim-options.lua
local o = vim.opt
o.relativenumber = true
o.number = true
o.tabstop = 2
o.shiftwidth = 2
o.expandtab = true
o.autoindent = true
o.wrap = false
o.ignorecase = true
o.smartcase = true
o.cursorline = true

o.termguicolors = true
--  default to darkmode
o.background = "dark" 
o.signcolumn = "yes"

-- backspace
o.backspace = "indent,eol,start"

-- use clipboard when yanking
o.clipboard:append("unnamedplus")

-- split windows
o.splitright = true
o.splitbelow = true

-- makes - part of the word, ie. works better with `dw`
o.iskeyword:append("-")


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

