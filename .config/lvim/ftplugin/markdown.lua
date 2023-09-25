local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { name = "markdownlint" },
}

local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  { name = "markdownlint" },
  -- { command = "vale" },
}

require("lvim.lsp.manager").setup("marksman")

local grammarly_opts = {
  init_options = { clientId = 'client_BaDkMgx4X19X9UxxYRCXZo', },
}
require("lvim.lsp.manager").setup("grammarly", grammarly_opts)
