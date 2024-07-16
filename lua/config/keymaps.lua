-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local map = vim.keymap.set
local del = vim.keymap.del
--

-- identation
del("n", ">")
del("n", "<")
map("n", ">", ">l", { remap = true, silent = true, desc = "Indent" })
map("n", "<", "<h", { remap = true, silent = true, desc = "Deindent" })

-- commenting
map("n", "<C-/>", "gcc", { remap = true, silent = true, desc = "Comment line" })
map("x", "<C-/>", "gc", { remap = true, silent = true, desc = "Comment selection" })

-- close
map("n", "<C-w>", "<leader>bd", { remap = true, silent = true, desc = "Close buffer" })
