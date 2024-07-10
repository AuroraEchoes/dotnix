-- General
vim.opt.number = true
vim.opt.mouse = "a"
vim.opt.ignorecase = true
vim.opt.hlsearch = false
vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false
vim.g.mapleader = " "
vim.opt.signcolumn = "yes"

-- Interact with clipboard
vim.keymap.set({"n", "x"}, "gy", "+y", {desc = "Copy to system clipboard"})
vim.keymap.set({"n", "x"}, "gp", "+p", {desc = "Paste from system clipboard"})
vim.keymap.set({"n", "x"}, "x", "_x")
vim.keymap.set("n", "<leader>a", ":keepjumps normal! ggVG<cr>")

-- Colour scheme
vim.opt.termguicolors = true
