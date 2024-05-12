-- configuration & prefix setting for whichkeys
local wk = require("which-key")

-- herein, register the key notes on our custom mapping
wk.register({
  [ "<leader>f" ] = { name = "+find" },
  [ "<leader>u"] =  { name = "undo tree"}
})

