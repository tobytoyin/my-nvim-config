local status, plugin = pcall(require, "lspconfig")
if not status then
  return
end

plugin.rust_analyzer.setup {
  settings = {
    ['rust-analyzer'] = {},
  },
}

plugin.lua_ls.setup {

}
