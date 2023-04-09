local vim = vim
local o = vim.o -- global
local wo = vim.wo -- window

-- global
o.swapfile = true
o.loaded_matchparen = 1
o.pumheight = 10 -- Makes popup menu smaller
o.cmdheight = 2 -- More space for displaying messages
o.mouse = "a" -- Support mouse for all modes
o.splitbelow = true -- Horizontal splits will automatically be below
o.splitright = true -- Vertical splits will automatically be to the right
o.showtabline = 2 -- Always show tablines
o.updatetime = 300 -- Faster completion
o.clipboard = "unnamedplus" -- Copy paste between vim and everything else
o.scrolloff = 7 -- Alyaws show N lines under cursor
o.completeopt = "menu,menuone,preview,noinsert,noselect" -- Set completeopt to have a better completion experience
-- nvim-tree advices:
-- disable netrw at the very start of your init.lua (strongly advised)
o.loaded_netrw = 1
o.loaded_netrwPlugin = 1
-- set termguicolors to enable highlight groups
o.termguicolors = true
-- o.completeopt="preview"



-- window local
wo.number = true -- Print current line number
wo.relativenumber = true -- Relative line number
wo.signcolumn = "yes" -- Always draw signcolumns
wo.wrap = true -- Display long lines as just one line
wo.cursorline = true
wo.conceallevel = 2

-- buffer local
o.tabstop = 4 -- Number of spaces that a <Tab> in the file counts for
o.shiftwidth = 4
o.expandtab = true -- Converts tabs to spaces



