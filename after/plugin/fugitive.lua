
-- key mapping for git integration
-- https://github.com/tpope/vim-fugitive
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
vim.keymap.set("n", "<leader>gw", vim.cmd.Gwrite) -- stage cuurent file
-- reset current file to main
-- reset current file to one commit backward
-- unstage the cuurent file

-- new custom commands
local commands = {
	{ name = "MyCommand", category = "MyCategory", action = function ()
		vim.cmd("echo 'hello world")

	end}
}
