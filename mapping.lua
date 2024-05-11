-- sets the default keys for nvim
-- <leader> is whitespace keys
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- quick commands
vim.keymap.set("n", "<leader>ex", ":Explore<cr>", {noremap = true})
vim.keymap.set("n", "<leader>vs", ":vsplit<cr>", {noremap = true})
vim.keymap.set("n", "<leader>to", ":vsplit | terminal<cr>", {noremap = true})

