local vim = vim

vim.cmd.colorscheme("catppuccin")
require("plugins_setup.treesitter")
require("plugins_setup.toggle_term")
require("plugins_setup.dap")
require("ccryptor").setup({ dir_path = "/home/kurotych/mywiki/secrets" })
require("nvim-tree").setup()
require("nvim_comment").setup()
require("toggleterm").setup()
require("nvim-autopairs").setup()
require("lualine").setup({
	sections = {
		lualine_c = { { "filename", path = 1 } }, -- 0 = just filename, 1 = relative path, 2 = absolute path
	},
})
require("project_nvim").setup({})
require("fuzzy-tag").setup()

local telescope = require("telescope")
telescope.load_extension("projects")

local lga_actions = require("telescope-live-grep-args.actions")
telescope.setup({
	extensions = {
		live_grep_args = {
			auto_quoting = true, -- enable/disable auto-quoting
			-- define mappings, e.g.
			mappings = { -- extend mappings
				i = {
					["<C-k>"] = lga_actions.quote_prompt(),
					["<C-i>"] = lga_actions.quote_prompt({ postfix = " --iglob " }),
				},
			},
			-- ... also accepts theme settings, for example:
			-- theme = "dropdown", -- use dropdown theme
			-- theme = { }, -- use own theme spec
			-- layout_config = { mirror=true }, -- mirror preview pane
		},
	},
})

-- To force terrortylor/nvim-comment comments solidity code properly
vim.api.nvim_create_autocmd("BufEnter", {
	pattern = "*.sol",
	callback = function()
		vim.api.nvim_buf_set_option(0, "commentstring", "// %s")
	end,
})

-- default config:
require("peek").setup({
	auto_load = true, -- whether to automatically load preview when
	-- entering another markdown buffer
	close_on_bdelete = true, -- close preview window on buffer delete
	syntax = true, -- enable syntax highlighting, affects performance
	theme = "light", -- 'dark' or 'light'
	update_on_change = true,
	app = { "firefox", "--new-window" },
	-- app = "webview", -- 'webview', 'browser', string or a table of strings
	-- explained below

	filetype = { "markdown" }, -- list of filetypes to recognize as markdown
	-- relevant if update_on_change is true
	throttle_at = 200000, -- start throttling when file exceeds this
	-- amount of bytes in size
	throttle_time = "auto", -- minimum amount of time in milliseconds
	-- that has to pass before starting new render
})

vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
