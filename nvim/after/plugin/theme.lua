require("tokyonight").setup({
  style = "night"
})

vim.cmd[[colorscheme tokyonight]]

require('lualine').setup {
  options = {
    theme = 'tokyonight',
    component_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' }
  },
  sections = {
        lualine_c = {
            {
                'filename',
                file_status = true,    
                newfile_status = false,
                path = 1,             
                shorting_target = 40,

                symbols = {
                    modified = '', 
                    readonly = '',
                    unnamed = '[No Name]', 
                    newfile = '[New]' 
                }
            }
        }
    }
}
