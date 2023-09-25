--  [[ TIDALCYCLES SPECIFIC ]]

local webicons = require("nvim-web-devicons")
webicons.set_icon {
  tidal = {
    icon = "",
    color = "#25c2a0",
    cterm_color = "65",
    name = "TidalCycles"
  }
}

local iron = require("iron.core")
local view = require("iron.view")
iron.setup {
  config = {
    repl_definition = {
      tidal = {
        command = { "ghci", "-ghci-script", "BootTidal.hs" }
      },
    },
    repl_open_cmd = view.split.vertical(80),
  },
}
