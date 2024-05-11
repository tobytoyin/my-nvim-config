-- sets the default keys for nvim
-- <leader> is whitespace keys
vim.g.mapleader = " "

-- quick commands
vim.keymap.set("n", "<leader>ex", vim.cmd.Ex) 
vim.keymap.set("n", "<leader>vs", ":vsplit<cr>", {noremap = true})
vim.keymap.set("n", "<leader>to", ":vsplit | terminal<cr>", {noremap = true})

vim.keymap.set("n", "<leader>ws", ":%s/") --word-substitue


