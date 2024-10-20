require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

vim.api.nvim_set_keymap("i", "<CapsLock>", "<Nop>", { noremap = true })
vim.api.nvim_set_keymap("n", "<CapsLock>", "<Nop>", { noremap = true })
vim.api.nvim_set_keymap("v", "<CapsLock>", "<Nop>", { noremap = true })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
