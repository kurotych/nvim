local vim = vim
local map = vim.api.nvim_set_keymap

vim.g.mapleader = ";"

-- Ctrl+s save file
map("n", "<C-s>", ":w<CR>", { silent = true })
-- Save file in insert mode ang to to NORMAL
map("i", "<C-s>", "<ESC>:w<CR>", { silent = true })

-- Copy/Paste outside of VIM
map("", "<C-C>", '"+y', {})
map("", "<C-v>", '"+p', {})

-- Replace text without yanking replaced line
map("v", "p", '"_dP', {})

-- Tab selected text
map("v", "<Tab>", ">gv", {})
map("v", "<S-Tab>", "<gv", {})

-- Better window navigation
map("n", "<C-h>", "<C-w>h", {})
map("n", "<C-j>", "<C-w>j", {})
map("n", "<C-k>", "<C-w>k", {})
map("n", "<C-l>", "<C-w>l", {})

-- Open file explorer
map("n", "ee", ":NvimTreeToggle<CR>", { silent = true })

-- Clear highlighting on escape in normal mode
map("n", "<esc>", ":noh<CR>", {})

map("n", "cb", ":BDelete hidden<CR>", { silent = true })

local builtin = require("telescope.builtin")
vim.keymap.set("n", "ff", builtin.find_files, {})
vim.keymap.set("n", "fg", require("telescope").extensions.live_grep_args.live_grep_args, {}) -- "project.nvim
vim.keymap.set("n", "fb", builtin.buffers, {})
vim.keymap.set("n", "fh", builtin.help_tags, {})
vim.keymap.set("n", "fp", require("telescope").extensions.projects.projects, {}) -- "project.nvim

-- " Use alt + hjkl to resize windows
vim.keymap.set("n", "<M-h>", ":vertical resize -2<CR>", {})
vim.keymap.set("n", "<M-l>", ":vertical resize +2<CR>", {})
vim.keymap.set("n", "<M-j>", ":horizontal resize -2<CR>", {})
vim.keymap.set("n", "<M-k>", ":horizontal resize +2<CR>", {})

vim.keymap.set("n", "mp", ":lua require'crabix-desktop'.markdown_preview()<CR>", { silent = true })

vim.keymap.set("n", "tt", ":ToggleTerm direction=float<CR>", { silent = true })
vim.keymap.set("n", "tr", ":TermExec cmd=\"cargo run\" direction=float<CR>", { silent = true })
vim.keymap.set("n", "fr", ':lua require("spectre").open()<CR>', { silent = true })


-- debugger
local dap = require('dap')
vim.keymap.set('n', '<F5>', function() dap.continue() end)
vim.keymap.set('n', '<F10>', function() dap.step_over() end)
vim.keymap.set('n', '<F11>', function() dap.step_into() end)
vim.keymap.set('n', '<F12>', function() dap.step_out() end)
vim.keymap.set('n', '<Leader>b', function() dap.toggle_breakpoint() end)
vim.keymap.set('n', '<Leader>dl', function() dap.run_last() end)
vim.keymap.set('n', '<Leader>df', function() require("dapui").float_element('scopes', { enter = true }) end)

local fuzzy_tag = require("fuzzy-tag.cmd")
vim.keymap.set('n', 'ft', function() fuzzy_tag.fuzzy_search_cmd() end)
