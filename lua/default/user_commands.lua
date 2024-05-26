-- here are some of the commands that can be used
-- :Command
-- see https://neovim.io/doc/user/lua-guide.html#lua-guide-commands-create
--
--
--
-- here are some basic examples in case I forget
vim.api.nvim_create_user_command("HelloWorld", "echo 'Hello World!'", {})
vim.api.nvim_create_user_command("HelloWorldName", 
function (opts) 
  print("Hello World ", opts.fargs[1], "!")
end
, { nargs = 1 })


-- set tabs
vim.api.nvim_create_user_command("SetTabSize", function (opts)
  cmd = string.format("ts=%s shiftwidth=%s", opts.fargs[1], opts.fargs[1])
  print(cmd)
  vim.cmd.set(cmd)
end, { nargs = 1 })
