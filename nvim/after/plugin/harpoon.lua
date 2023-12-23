local harpoon = require("harpoon")
harpoon:setup()

vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end)
vim.keymap.set("n", "<leader>w", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
vim.keymap.set("n", "<leader>0", ":b#<CR>")
vim.keymap.set("n", "<leader>g", vim.cmd.Git)

for i = 1, 9 do
    vim.keymap.set("n", "<leader>" .. i, function()
        harpoon:list():select(i)
    end)
end
