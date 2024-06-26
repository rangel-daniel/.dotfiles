-- luacheck: globals vim

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

-- Move highlightes lines in visual mode.
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Navigate & center cursor.
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- System clipboard inigration.
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- Next / Prev error.
vim.keymap.set("n", "<C-p>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-n>", "<cmd>cprev<CR>zz")

-- Next / Prev form location list.
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Enable spellcheck.
vim.keymap.set("n", "<leader>c", "<cmd>setlocal spell spelllang=en_us<CR>")

-- Current buffer find and replace.
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<leader>0", ":b#<CR>")
