return require("packer").startup(function(use)
    use("wbthomason/packer.nvim")
    use("nvim-lua/plenary.nvim")
    use("kkharji/sqlite.lua")

    -- Better Syntax Support. Try to Run manually :TSUpdateSync if installation is failed
    use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdateSync" })

    -- File Explorer
    use("kyazdani42/nvim-web-devicons") -- optional, for file icons
    use("kyazdani42/nvim-tree.lua")

    -- Colorschema
    use({ "catppuccin/nvim", as = "catppuccin" })

    -- A nice statusline at the bottom of each vim window.
    use("nvim-lualine/lualine.nvim")

    -- Autocompletion framework for built-in LSP
    use("neovim/nvim-lspconfig") -- Collection of configurations for built-in LSP client
    use("hrsh7th/nvim-cmp") -- Autocompletion plugin
    use("hrsh7th/cmp-nvim-lsp") -- LSP source for nvim-cmp
    use("saadparwaiz1/cmp_luasnip") -- Snippets source for nvim-cmp
    use("L3MON4D3/LuaSnip") -- Snippets plugin

    use {
        "nvim-telescope/telescope.nvim",
        requires = {
            { "nvim-telescope/telescope-live-grep-args.nvim" },
        },
        config = function()
            require("telescope").load_extension("live_grep_args")
        end
    }

    -- Find and Replace
    use("windwp/nvim-spectre")

    use("terrortylor/nvim-comment")

    use("APZelos/blamer.nvim")

    use("renerocksai/calendar-vim")

    -- Encrypted directory
    use("kurotych/ccryptor.nvim")
    use("kurotych/crabix-desktop.nvim")
    use("kurotych/fuzzy-tag.nvim")

    -- Git diff tool
    use("sindrets/diffview.nvim")

    -- Recent projects popup
    use("ahmedkhalf/project.nvim")

    use("kazhala/close-buffers.nvim")

    use("windwp/nvim-autopairs")

    use("akinsho/toggleterm.nvim")

    use("mfussenegger/nvim-dap")
    use 'simrat39/rust-tools.nvim'
    use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } }
end)
