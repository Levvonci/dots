return {
  {
    "williamboman/mason.nvim",
  config = function()
    require("mason").setup()
  end
  },
  {
    'williamboman/mason-lspconfig.nvim',
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {"lua_ls"}
      })
    end
  },
  {
    'neovim/nvim-lspconfig',
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lspconfig = require("lspconfig")
      lspconfig.tsserver.setup({
        capabilities = capabiliets
      })
      lspconfig.html.setup({
        capabilities = capabiliets
      })
      lspconfig.lua_ls.setup({
        capabilities = capabiliets
      })

      lspconfig.lua_ls.setup({})
      lspconfig.tsserver.setup({})
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gD', vim.lsp.buf.definition, {})
      vim.keymap.set({'n','v'}, '<leader>ca', vim.lsp.buf.code_action, {})
    end

  },
}

