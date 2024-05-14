-- sets the default keys for nvim
-- <leader> is whitespace keys
vim.g.mapleader = " "

-- quick commands
vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)
vim.keymap.set("n", "<leader>to", ":vsplit | terminal<cr>", {noremap = true})

vim.keymap.set("n", "<leader>ws", ":%s/") --word-substitue
vim.keymap.set("n", "<leader>yy", '"*yy') -- clipboard copy
vim.keymap.set("n", "<leader>pp", '"*p')  -- clipboard paste


-- remapping
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
