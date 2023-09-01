local keymap = vim.keymap

vim.g.mapleader = "\\"

-- Insertation mode --

-- Visual mode --
-- keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- no highlight
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- nvim-tree
keymap.set("n", "<F3>", ":NvimTreeToggle<CR>")
