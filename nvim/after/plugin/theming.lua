require("vscode").load()

require("lualine").setup({
    options = {
        theme = "vscode",
        section_separators = { left = '', right = '' },
        component_separators = { left = '', right = '' }
    },
    sections = {
        lualine_c = {
            {
                "filename",
                file_status = true,
                newfile_status = false,
                path = 1,
                shorting_target = 40,

                symbols = {
                    modified = "",
                    readonly = "",
                    unnamed = "[No Name]",
                    newfile = "[New]",
                },
            },
        },
    },
})
