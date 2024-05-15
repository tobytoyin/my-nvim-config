local lsp = require('lsp-zero')



lsp.on_attach(function(client, bufnr)
  -- below are the keybinding that only works when LSP is activated in the cuurent buffer
  lsp.default_keymaps({buffer = bufnr})
end)

-- lsp setup
local lspconfig = require("lspconfig")
lspconfig.lua_ls.setup { }
lspconfig.gopls.setup{}
lspconfig.lspcontainers.setup{}


-- here we setup autocompletion
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
  sources = {
    {name = 'nvim_lsp'},
  },
  mapping = {
    ['<Tab>'] = cmp_action.tab_complete(),
    ['<C-y>'] = cmp.mapping.confirm({select = false}),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<Up>'] = cmp.mapping.select_prev_item({behavior = 'select'}),
    ['<Down>'] = cmp.mapping.select_next_item({behavior = 'select'}),
  },
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
})


