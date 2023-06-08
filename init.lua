vim.g.mapleader = ' '
vim.g.maplocalleader = ' '


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

-- makes - and . part of the word, ie. works better with `dw`
o.iskeyword:append("-")
-- o.iskeyword:append(".")

o.hlsearch = false
o.incsearch = true

o.colorcolumn = "80"

o.undodir = os.getenv("HOME") .. "/.vim/undodir"
o.undofile = true


require('packer-config')
require('mason-config')
require('gopls')
require('lsp-zero-config')
require('nvim-tree-config')
require('keymaps')
require('debug-go-delve')
require('theme-dracula')
require('treesitter-config')
require('lualine-config')
require('telescope-config')
require('gui-neovide')
require('indent-blankline-config')
require('gitsigns-config')
require('fugitive-config')

-- this seems not to work? or maybe I should also do PackerSync
vim.cmd([[
  augroup packer_user_config
  autocmd!
  autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

