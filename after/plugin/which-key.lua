-- configuration & prefix setting for whichkeys
local wk = require("which-key")

-- herein, register the key notes on our custom mapping
wk.register({
  -- leader keymapping
  f = {
    name = "file", -- optional group name
    f = { "<cmd>Telescope find_files<cr>", "Find File" }, -- create a binding with label
    b = { "<cmd>Telescope buffers<cr>", "Find recent buffers"},
  },
  t = {
    name = "terminal",
    o = { "<cmd>vsplit | termainal<cr>", "Open terminal"}
  },
  w = {
    name = "word",
    s = { "<cmd>%s/", "word substitue"}
  }
},
{ prefix = "<leader>" })
