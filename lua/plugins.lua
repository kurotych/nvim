require("lazy").setup({
	"catppuccin/nvim",
	"EdenEast/nightfox.nvim",

	{
		"kurotych/fuzzy-tag.nvim",
		dependencies = { "kkharji/sqlite.lua" },
	},

	"kurotych/ccryptor.nvim",

	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdateSync" },

	-- File Explorer
	"kyazdani42/nvim-web-devicons", -- optional, for file icons
	"kyazdani42/nvim-tree.lua",

	{
		"nvim-lualine/lualine.nvim",
		-- dependencies  = { "nvim-tree/nvim-web-devicons"}
	},

	-- Autocompletion framework for built-in LSP
	"neovim/nvim-lspconfig", -- Collection of configurations for built-in LSP client
	"hrsh7th/nvim-cmp", -- Autocompletion plugin
	"hrsh7th/cmp-nvim-lsp", -- LSP source for nvim-cmp
	"saadparwaiz1/cmp_luasnip", -- Snippets source for nvim-cmp

	{
		"L3MON4D3/LuaSnip",
		-- follow latest release.
		version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
		-- install jsregexp (optional!).
		build = "make install_jsregexp",
	},

	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			{
				"nvim-lua/plenary.nvim",
				"nvim-telescope/telescope-live-grep-args.nvim",
				"ahmedkhalf/project.nvim",
			},
		},
	},

	{
		"rcarriga/nvim-dap-ui",
		dependencies = { "mfussenegger/nvim-dap" },
	},

	-- Find and Replace
	"windwp/nvim-spectre",
	"terrortylor/nvim-comment",
	"APZelos/blamer.nvim",
	"renerocksai/calendar-vim",
	"sindrets/diffview.nvim",
	"kazhala/close-buffers.nvim",
	"windwp/nvim-autopairs",
	"akinsho/toggleterm.nvim",

	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		ft = { "markdown" },
		build = function()
			vim.fn["mkdp#util#install"]()
		end,
	},
}, {
	defaults = { version = nil },
})
