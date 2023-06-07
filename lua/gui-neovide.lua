if vim.g.neovide then
	vim.g.neovide_scroll_animation_length = 0.1
	vim.g.neovide_hide_mouse_when_typing = true
	-- this essentially disables the animation
	vim.g.neovide_cursor_animation_length = 0.0

	-- enable cmd+x, cmd+v, cmd+c
	vim.g.neovide_input_use_logo = 1 -- enable use of the logo (cmd) key
	-- vim.keymap.set('n', '<D-s>', ':w<CR>') -- Save
	vim.keymap.set('v', '<D-c>', '"+y') -- Copy
	vim.keymap.set('n', '<D-v>', '"+P') -- Paste normal mode
	vim.keymap.set('v', '<D-v>', '"+P') -- Paste visual mode
	vim.keymap.set('c', '<D-v>', '<C-R>+') -- Paste command mode
	vim.keymap.set('i', '<D-v>', '<ESC>l"+Pli') -- Paste insert mode

  vim.api.nvim_create_autocmd(
  {"VimEnter"},
  { pattern = "*", command = "cd /Users/markus/", group = vim_enter_group }
  )
end
