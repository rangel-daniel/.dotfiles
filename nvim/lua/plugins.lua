return require('packer').startup(function(use)
    -- Packer
    use 'wbthomason/packer.nvim'
    --

    use 'nvim-lua/plenary.nvim'
    use 'nvim-tree/nvim-web-devicons'
    use 'Mofiqul/vscode.nvim'
    use 'nvim-lualine/lualine.nvim'
    use 'ThePrimeagen/harpoon'
    use 'mbbill/undotree'
    use 'tpope/vim-fugitive'
    use 'mhartington/formatter.nvim'
    use 'mfussenegger/nvim-lint'
    use 'christoomey/vim-tmux-navigator'

    use { 'nvim-telescope/telescope.nvim', tag = '0.1.5' }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    -- LSP Support
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use 'neovim/nvim-lspconfig'
    -- Autocompletion
    use 'hrsh7th/cmp-nvim-lsp'
    use 'saadparwaiz1/cmp_luasnip'
    use "rafamadriz/friendly-snippets"
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-buffer'



    use({ "L3MON4D3/LuaSnip", tag = "v2.*", run = "make install_jsregexp" })

    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    use {
        'lewis6991/gitsigns.nvim',
        config = function() require('gitsigns').setup() end
    }

    use({
        "kawre/leetcode.nvim",
        run = ":TSUpdate html",
        requires = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        },
    })
end)
