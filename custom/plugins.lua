local plugins = {
  -- below defines the list of plugins for nvChad
  { "elkowar/yuck.vim", lazy = false }, -- load a plugin at startup
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require "custom.configs.null-ls"
      end,
    },
    config = function()
      require "plugins.configs.lspconfig" -- allow the default lsp
      require "custom.configs.lspconfig" -- allow the custom lsp
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "prettier",
        "stylua",
      },
    },
  },
}

return plugins
