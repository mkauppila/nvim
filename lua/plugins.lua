-- Note: Packer Git repo has been cloned to
--       ~/.local/share/nvim/site/pack/packer/start/packer.nvim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
end)

