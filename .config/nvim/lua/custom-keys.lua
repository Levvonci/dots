-- fetch keymapiii
local map = vim.api.nvim_set_keymap

-- map the key n to run the command :NvimTreeToggle
map('n', 'n', [[:NvimTreeToggle<CR>]], {})
vim.keymap.set({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })
vim.keymap.set("n", "<C-Up>", [[:Trouble<CR>]], { desc = 'Open toggle' })
vim.keymap.set("n", "<C-Down>", [[:TroubleClose<CR>]], { desc = 'Close toggle' })
