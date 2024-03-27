require("harpoon").setup({ ... })

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", function() mark.add_file() end)
vim.keymap.set("n", "<leader>w", function() ui.toggle_quick_menu() end)
vim.keymap.set("n", "<leader>-", function() ui.nav_prev() end)
vim.keymap.set("n", "<leader>=", function() ui.nav_next() end)

for i = 1, 9 do
    vim.keymap.set("n", "<leader>" .. i, function()
       ui.nav_file(i) 
    end)
end

