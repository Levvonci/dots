-- [[ AUTOCOMMANDS ]]

lvim.autocommands = {
  {
    { "BufEnter", "Filetype" },
    {
      desc     = "Open mini.map and exclude some filetypes",
      pattern  = { "*" },
      callback = function()
        local exclude_ft = {
          "quickfix",
          "help",
          "alpha",
          "toggleterm",
          "tidal",
          "Mundo",
          "Trouble",
        }

        local map = require("mini.map")
        if vim.tbl_contains(exclude_ft, vim.o.filetype) then
          vim.b.minimap_disable = true
          map.close()
        elseif vim.o.buftype == "" then
          map.open()
        end
      end,
    },
  },
  {
    "BufWinEnter",
    {
      desc     = "Open NeoTree by default",
      pattern  = { "*" },
      callback = function()
        local return_ft = {
          "toggleterm",
          "Mundo",
          "MundoDiff",
          "glowpreview",
          "lspinfo",
          "Trouble",
        }

        local exclude_ft = {
          "",
          "quickfix",
          "help",
          "alpha",
        }

        if vim.tbl_contains(exclude_ft, vim.o.filetype) then
          vim.cmd "Neotree close"
        elseif vim.tbl_contains(return_ft, vim.o.filetype) then
          return
        else
          vim.cmd "Neotree filesystem show left"
          -- vim.cmd "wincmd w"
        end
      end,
    },
  },
  {
    "QuitPre",
    {
      desc    = "Close NeoTree on quit",
      pattern = { "*" },
      command = "Neotree close"
    },
  },
  {
    "QuitPre",
    {
      desc    = "Close MundoTree on quit",
      pattern = { "*" },
      command = "MundoHide"
    },
  },
}
