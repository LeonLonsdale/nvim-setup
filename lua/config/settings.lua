vim.g.mapleader = " "

-- for nvim tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
-- Line numbers by default
vim.o.number = true

-- Relative line numbers
vim.o.relativenumber = true

vim.o.termguicolors = true

vim.o.timeout = true
vim.o.timeoutlen = 300

-- Highlight on search
vim.o.hlsearch = false

-- Sync with OS clipboard
vim.o.clipboard = "unnamedplus"

-- Break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Sign column always visible
vim.wo.signcolumn = "yes"


vim.o.completeopt = "menuone,noselect"

vim.opt.fillchars = {eob = " "}
