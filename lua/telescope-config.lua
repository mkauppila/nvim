-- search files, even hidden ones
vim.keymap.set('n', '<leader>ff', ':lua require"telescope.builtin".find_files({no_ignore=false, hidden=true})<CR>', {})

-- ripgrep files, respects gitignore
vim.keymap.set('n', '<leader>fg', ':lua require"telescope.builtin".live_grep()<CR>', {})

vim.keymap.set('n', '<leader>fb', ':lua require"telescope.builtin".buffers()<CR>', {})
vim.keymap.set('n', '<leader>fh', ':lua require"telescope.builtin".help_tags()<CR>', {})

-- this is not workign?
vim.keymap.set('n', '<leader>ft', ':lua require"telescope.builtin".treesitter()<CR>', {})
