lspconfig = require "lspconfig"

lspconfig.clangd.setup {
	cmd = { 'clangd' },
	filetypes = { 'c' }
}
