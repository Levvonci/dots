return { 
    "catppuccin/nvim", 
    name = "catppuccin", 
    priority = 1000,
    config = function()
        require("catppuccin").setup({
          flavour = "mocha",
          background = {
          light = "latte",
          dark = "mocha",
        },
        transparent_background = true,

        })

        vim.cmd.colorscheme "catppuccin"
      end
    }
