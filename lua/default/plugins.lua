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
 use "lspcontainers/lspcontainers.nvim"
 use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  requires = {
    --- Uncomment the two plugins below if you want to manage the language servers from neovim
    -- {'williamboman/mason.nvim'},
    -- {'williamboman/mason-lspconfig.nvim'},

    {'neovim/nvim-lspconfig'},
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'L3MON4D3/LuaSnip'},
  }
}
-- git intergation
use "tpope/vim-fugitive"

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
    run = ":TSUpdate"
  }
  use "nvim-treesitter/playground"
  use "theprimeagen/harpoon"
  use "mbbill/undotree"
  use "tpope/vim-surround"

  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
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
