local leetcode_directory = vim.fn.expand("~/Desktop/leetcode")
local current_directory = vim.fn.expand("%:p:h")

if current_directory == leetcode_directory or string.match(current_directory, "^" .. leetcode_directory .. "/") then
    vim.keymap.set("n", "<leader>fp", "<cmd> Leet list<CR>")
    vim.keymap.set("n", "<leader>i", "<cmd> Leet info<CR>")
    vim.keymap.set("n", "<leader>t", "<cmd> Leet test<CR>")
    require("leetcode").setup({
        arg = "leetcode",
        lang = "python3",
        storage = {
            home = leetcode_directory,
            cache = leetcode_directory .. '/.cache',
        }
    })
    vim.cmd("args leetcode")
end
