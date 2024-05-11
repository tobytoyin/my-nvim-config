local builtin = require("telescope.builtin")

-- [[
-- Telescope Keymapping
-- ]]

-- Navigation mode
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set("n", "<leader>fs", function()
	builtin.grep_string({search = vim.fn.input("Search: ")});

end)

