-- [[
-- This section bootstrap the plugins
-- allowing packer to installed if it is not already installed on the system
-- then load the plugins.lua
-- ]]
-- All the configs per plugin should be inside /lua/configs

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- [[
  -- All the Plugins start below
  -- ]]

  -- "telescope" - fuzzy search of anything in nvim
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    requires = { { 'nvim-lua/plenary.nvim' } },
  }

  -- lsp
  use {
    "neovim/nvim-lspconfig",
    config = function()
    end,
  }

  -- automation & diagnosis
  use 'tpope/vim-sleuth'

  use {
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
      require("which-key").setup {}
    end
  }

  use {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      require("nvim-autopairs").setup {}
    end
  }

  -- theme, look and feels
  use 'navarasu/onedark.nvim'
  use {
    'nvim-treesitter/nvim-treesitter',
  }

  use {
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
      require("nvim-surround").setup({
      })
    end
  }






  -- [[
  -- Plugin Ends here
  -- ]]

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
