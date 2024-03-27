--
-- Plugins who's configs are small and don't need a whole file.
--

-- vim-fugitive
vim.keymap.set("n", "<leader>g", vim.cmd.Git)

-- undotree
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)

-- tmux navigator
vim.keymap.set("n", "<c-h>", "<cmd> TmuxNavigateLeft<CR>")
vim.keymap.set("n", "<c-l>", "<cmd> TmuxNavigateRight<CR>")
vim.keymap.set("n", "<c-k>", "<cmd> TmuxNavigateUp<CR>")
vim.keymap.set("n", "<c-j>", "<cmd> TmuxNavigateDown<CR>")
