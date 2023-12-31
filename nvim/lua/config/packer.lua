vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
    use("nvim-lua/plenary.nvim")
    use("wbthomason/packer.nvim")
    use("folke/tokyonight.nvim")
    use("mbbill/undotree")
    use("tpope/vim-fugitive")
    use("rafamadriz/friendly-snippets")
    use("jose-elias-alvarez/null-ls.nvim")
    use("christoomey/vim-tmux-navigator")

    use {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        requires = { { "nvim-lua/plenary.nvim" } }
    }

    use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })

    use({
        "nvim-telescope/telescope.nvim",
        tag = "0.1.5"
    })

    use({
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup({})
        end,
    })

    use({
        "nvim-lualine/lualine.nvim",
        requires = { "nvim-tree/nvim-web-devicons", opt = true },
    })

    use({
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup()
        end,
    })

    use({
        "VonHeikemen/lsp-zero.nvim",
        branch = "v3.x",
        requires = {
            { "williamboman/mason.nvim" },
            { "williamboman/mason-lspconfig.nvim" },

            -- LSP Support
            { "neovim/nvim-lspconfig" },
            -- Autocompletion
            { "hrsh7th/nvim-cmp" },
            { "hrsh7th/cmp-nvim-lsp" },
            { "L3MON4D3/LuaSnip" },
        },
    })
    use { 'saadparwaiz1/cmp_luasnip' }

    use({
        "kawre/leetcode.nvim",
        run = ":TSUpdate html",
        requires = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        },
    })
end)
