-- sets the default keys for nvim
-- <leader> is whitespace keys
vim.g.mapleader = " "
vim.g.maplocalleader = " "



-- [[ 
-- Telescope Keymapping 
-- ]]

local builtin = require("telescope.builtin")

-- Navigation mode
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
