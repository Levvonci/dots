local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { name = "standardjs" },
}

local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  { name = "standardjs" },
}
