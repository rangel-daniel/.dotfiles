-- Utilities for creating configurations
local util = require "formatter.util"

local function prettierd()
    return {
        exe = "prettierd",
        args = {
            '--single-quote',
            "--tab-width=4",
            "--printWidth=90",
            "--quote-props=preserve",
            util.escape_path(util.get_current_buffer_file_path()) },
        stdin = true,
    }
end

local function clang_format()
    return {
        exe = "clang-format",
        args = {
            "-assume-filename",
            util.escape_path(util.get_current_buffer_file_name()),
            "-style=file:" .. vim.fn.expand('~/.config/nvim/.clang-format'),

        },
        stdin = true,
        try_node_modules = true,
    }
end

local function black()
    return {
        exe = "black",
        args = { "-q", "--stdin-filename", util.escape_path(util.get_current_buffer_file_name()), "-" },
        stdin = true,
    }
end

local filetype = {
    javascript = { prettierd },
    typescript = { prettierd },
    javascriptreact = { prettierd },
    typescriptreact = { prettierd },
    markdown = { prettierd },
    css = { prettierd },
    json = { prettierd },
    cpp = { clang_format },
    python = { black }
}

-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
require("formatter").setup {
    -- Enable or disable logging
    logging = true,
    log_level = vim.log.levels.WARN,

    filetype = filetype,
}

-- Format & save
local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
augroup("__formatter__", { clear = true })
autocmd("BufWritePost", {
    group = "__formatter__",
    command = ":FormatWrite",
})


-- Format file.
vim.keymap.set("n", "<leader>f", function()
    if filetype[vim.bo.filetype] then
        vim.fn.execute("Format")
    else
        vim.lsp.buf.format()
    end
end)
