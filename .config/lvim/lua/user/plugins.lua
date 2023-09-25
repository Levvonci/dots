-- [[ ADDITIONAL PLUGINS ]]

lvim.plugins = {
  -- [[ HASKELL ]]
  {
    "mrcjkb/haskell-tools.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    branch = "2.x.x", -- Recommended
    -- load the plugin when opening one of the following file types
    ft = { 'haskell', 'lhaskell', 'cabal', 'cabalproject' },
  },
  {
    "mrcjkb/haskell-snippets.nvim",
    dependencies = {
      "L3MON4D3/LuaSnip",
    }
  },
  {
    "luc-tielen/telescope_hoogle"
  },
  {
    "Vigemus/iron.nvim"
  },

  -- [[ SUPERCOLLIDER / TIDAL ]]
  -- {
  --   "davidgranstrom/scnvim",
  --   config = function()
  --     require("scnvim").setup()
  --   end
  -- },
  -- {
  --   "simnalamburt/vim-mundo",
  -- },

  -- [[ MARKDOWN ]]
  {
    "iamcco/markdown-preview.nvim",
    config = function()
      vim.fn["mkdp#util#install"]()
    end,
  },

  -- [[ ZETTELKASTEN ]]
  -- https://zettelkasten.de/introduction/
  -- https://github.com/mickael-menu/zk
  {
    "mickael-menu/zk-nvim",
    config = function()
      require("zk").setup({
        picker = "telescope",
        lsp = {
          config = {
            cmd = { "zk", "lsp" },
            name = "zk",
          },
          auto_attach = {
            enabled = true,
            filetypes = { "markdown" },
          },
        },
      })
    end
  },

  -- [[ LANGUAGE AND WORD PROCESSING ]]
  {
    "uga-rosa/cmp-dictionary",
    config = function()
      require("cmp_dictionary").setup({
        exact = 2,
        first_case_insensitive = false,
        document = true,
        document_command = "wn %s -over",
        async = false,
        sqlite = false,
        max_items = -1,
        capacity = 5,
        debug = false,
      })
    end
  },

  -- [[ UI/UX ]]
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require("neo-tree").setup({
        close_if_last_window = true,
        window = {
          width = 30,
        },
        buffers = {
          follow_current_file = {
            enabled = true
          },
        },
        filesystem = {
          follow_current_file = {
            enabled = true
          },
          filtered_items = {
            hide_dotfiles = false,
            hide_gitignored = false,
            hide_by_name = {
              "node_modules"
            },
            never_show = {
              ".DS_Store",
              "thumbs.db"
            },
          },
        },
      })
    end
  },
  {
    "echasnovski/mini.map",
    branch = "stable",
    config = function()
      require("mini.map").setup()
      local map = require("mini.map")
      map.setup({
        integrations = {
          map.gen_integration.builtin_search(),
          map.gen_integration.diagnostic({
            error = "DiagnosticFloatingError",
            warn  = "DiagnosticFloatingWarn",
            info  = "DiagnosticFloatingInfo",
            hint  = "DiagnosticFloatingHint",
          }),
        },
        symbols = {
          encode = map.gen_encode_symbols.dot("4x2"),
        },
        window = {
          side = "right",
          width = 20,
          winblend = 15,
          show_integration_count = false,
        },
      })
    end
  },
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup({
          "elm",
          "css", "scss", "html",
          "javascript", "javascriptreact",
          "typescript", "typescriptreact",
          "yaml", "toml", "markdown",
          "lua",
        },
        {
          RGB = true,
          RRGGBB = true,
          RRGGBBAA = true,
          rgb_fn = true,
          hsl_fn = true,
          css = true,
          css_fn = true,
        })
    end,
  },

  -- [[ IDE ENHANCEMETS ]]
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
    config = function()
      require("trouble").setup {
        height = 20,
        width = 50,
        icons = true,
        mode = "workspace_diagnostics",
        auto_open = false,
        auto_close = true,
        auto_preview = true,
        auto_fold = false,
      }
    end
  },
  {
    "folke/lsp-colors.nvim",
    event = "BufRead",
  },
  {
    "windwp/nvim-ts-autotag", -- NOTE: will this be useful or redundant?
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  {
    "HiPhish/nvim-ts-rainbow2",
  },

  -- [[ PROJECTS + SESSIONS MANAGEMENT ]]
  {
    "folke/persistence.nvim",
    event = "BufReadPre",
    -- module = "persistence",
    config = function()
      require("persistence").setup {
        dir = vim.fn.expand(vim.fn.stdpath("state") .. "/sessions/"), -- directory where session files are saved
        options = { "buffers", "curdir", "tabpages", "winsize" },     -- sessionoptions used for saving
        pre_save = nil,                                               -- a function to call before saving the session
      }
    end,
  },

  -- [[ SCM GIT ]]
  {
    "kdheepak/lazygit.nvim"
  },
  {
    -- TODO: settings and usage https://github.com/sindrets/diffview.nvim
    "sindrets/diffview.nvim",
    dependencies = "nvim-lua/plenary.nvim"
  },
  {
    "mattn/vim-gist",
    dependencies = {
      "mattn/webapi-vim"
    },
    event = "BufRead",
    config = function()
      vim.cmd("let g:gist_clip_command = 'pbcopy'")
      vim.cmd("let g:gist_detect_filetype = 1")
      vim.cmd("let g:gist_open_browser_after_post = 1")
      vim.cmd("let g:gist_post_private = 1")
    end,
  },
  {
    "ruifm/gitlinker.nvim",
    event = "BufRead",
    config = function()
      require("gitlinker").setup {
        opts = {
          add_current_line_on_normal_mode = true,
          action_callback = require("gitlinker.actions").copy_to_clipboard,
          print_url = false,
          mappings = nil
        },
      }
    end,
    dependencies = "nvim-lua/plenary.nvim",
  },

  -- [[ UTILS ]]
  {
    "ethanholz/nvim-lastplace",
    event = "BufRead",
    config = function()
      require("nvim-lastplace").setup({
        lastplace_ignore_buftype = {
          "quickfix",
          "nofile",
          "help"
        },
        lastplace_ignore_filetype = {
          "gitcommit",
          "gitrebase",
          "svn",
          "hgcommit",
        },
        lastplace_open_folds = true,
      })
    end,
  },
  {
    "folke/todo-comments.nvim",
    event = "BufRead",
    config = function()
      require("todo-comments").setup()
    end,
  },
  {
    "AckslD/nvim-neoclip.lua",
    dependencies = {
      {
        "kkharji/sqlite.lua",
        module = "sqlite"
      },
      { "nvim-telescope/telescope.nvim" },
    },
    config = function()
      require("neoclip").setup({
        history = 1000,
        enable_persistent_history = false,
      })
    end,
  },

  -- [[ TESTING ]]
  {
    "nvim-neotest/neotest",
    dependencies = {
      "MrcJkb/neotest-haskell",
    },
    config = function()
      require("neotest").setup({
        adapters = {
          require("neotest-haskell"),
        }
      })
    end
  },
}
