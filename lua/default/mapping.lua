-- sets the default keys for nvim
-- <leader> is whitespace keys
vim.g.mapleader = " "

-- quick commands
vim.keymap.set("n", "<leader>ex", vim.cmd.Ex) 
vim.keymap.set("n", "<leader>vs", ":vsplit<cr>", {noremap = true})
vim.keymap.set("n", "<leader>to", ":vsplit | terminal<cr>", {noremap = true})

vim.keymap.set("n", "<leader>ws", ":%s/") --word-substitue

-- remapping
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- change w to W because it's more often to jump words by whitespace
vim.keymap.set("n", "w", "W")
vim.keymap.set("n", "W", "w")
vim.keymap.set("n", "B", "b")
vim.keymap.set("n", "b", "B")
