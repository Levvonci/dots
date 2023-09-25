-- [[ CUSTOM KEY MAPPINGS ]]

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"

-- ESC, Function Keys, Backspace
lvim.keys.normal_mode["<Esc>"] = ":nohls<cr>"
-- lvim.keys.normal_mode["<F1>"] = "<cmd><cr>"
lvim.keys.normal_mode["<F2>"] = "gwap"
lvim.keys.normal_mode["<F3>"] = "gwG"
-- lvim.keys.normal_mode["<F4>"] = "<cmd><cr>"
-- lvim.keys.normal_mode["<F5>"] = "<cmd><cr>"
-- lvim.keys.normal_mode["<F6>"] = "<cmd><cr>"
-- lvim.keys.normal_mode["<F7>"] = "<cmd><cr>"
-- lvim.keys.normal_mode["<F8>"] = "<cmd><cr>"
-- lvim.keys.normal_mode["<F9>"] = "<cmd><cr>"
-- lvim.keys.normal_mode["<F10>"] = "<cmd><cr>"
-- lvim.keys.normal_mode["<F11>"] = "<cmd><cr>"
lvim.keys.normal_mode["<F12>"] = "<cmd>TroubleToggle<cr>"
lvim.keys.normal_mode["<bs>"] = ":edit #<cr>"

-- NOTE: [[ ADDITIONS TO EXISTING MENUS ]]

-- LUNARVIM ADDITIONS
lvim.builtin.which_key.mappings["LC"] = {
  "<cmd>LvimCacheReset<cr>", "Cache Reset"
}

lvim.builtin.which_key.mappings["Ls"] = {
  "<cmd>LvimSyncCorePlugins<cr>", "Sync Core Plugins"
}

-- BUFFERS ADDITIONS
lvim.builtin.which_key.mappings["bc"] = {
  "<cmd>BufferKill<cr>", "Close Buffer"
}

-- TELESCOPE ADDITIONS
lvim.builtin.which_key.mappings["sT"] = {
  "<cmd>TodoTelescope keywords=TODO,FIX,NOTE,TEST<cr>", "TODO"
}

-- GIT ADDITIONS
lvim.builtin.which_key.mappings["gd"] = {
  "<cmd>DiffviewFileHistory %%<cr>", "Giht Diff"
}

lvim.builtin.which_key.mappings["gD"] = {
  "<cmd>DiffviewFileHistory<cr>", "Diff History"
}

lvim.builtin.which_key.mappings["gy"] = {
  "<cmd>lua require('gitlinker').get_buf_range_url('n')<cr>", "Git Linker"
}

-- PROJECTS ADDITIONS
lvim.builtin.which_key.mappings["P"] = {
  "<cmd>Telescope projects<cr>", "Projects"
}

-- UNDOLIST ADDITIONS
lvim.builtin.which_key.mappings["u"] = {
  "<cmd>undolist<cr>", "Undo List"
}

-- CLIPBOARD ADDITIONS
lvim.builtin.which_key.mappings["c"] = {
  "<cmd>Telescope neoclip<cr>", "Clipboard"
}

-- EXPLORER ADDITIONS
lvim.builtin.which_key.mappings["e"] = {
  "<cmd>Neotree filesystem show left<cr>", "Explorer"
}

-- REMOVE TRAILING WHITESPACE
lvim.builtin.which_key.mappings["W"] = {
  "<cmd>%s/\\s\\+$//e<cr>", "Del Whitespaces"
}

-- NOTE: [[ MY OWN MENUS ]]

-- MARKDOWN PREVIEW with Glow, temporary
lvim.builtin.which_key.mappings["m"] = {
  name = "+Markdown",
  p = { "<cmd>MarkdownPreview<cr>", "Markdown Preview" },
  s = { "<cmd>MarkdownPreviewStop<cr>", "Markdown Preview STOP" },
  t = { "<cmd>MarkdownPreviewToggle<cr>", "Markdown Preview Toggle" },
}

-- FORMAT ADDITIONS
lvim.builtin.which_key.mappings["F"] = {
  name = "+Format",
  b = { "gwG", "Format to EOF" },
  l = { "gww", "Format line" },
  p = { "gwap", "Format paragraph" },
}

-- PERSISTENCE / SESSIONS
lvim.builtin.which_key.mappings["S"] = {
  name = "+Session",
  c = { "<cmd>lua require('persistence').load()<cr>", "Restore Last Session for current dir" },
  l = { "<cmd>lua require('persistence').load({ last = true })<cr>", "Restore Last Session" },
  L = { "<cmd>lua require('persistence').list()<cr>", "List Sessions" },
  Q = { "<cmd>lua require('persistence').stop()<cr>", "Quit Without Saving" },
  s = { "<cmd>lua require('persistence').save()<cr>", "Save Current Session" },
  S = { "<cmd>lua require('persistence').start()<cr>", "START Sessions" },
}

-- TROUBLE
lvim.builtin.which_key.mappings["t"] = {
  name = "+Trouble",
  d = { "<cmd>Trouble document_diagnostics<cr>", "Document Diagnostics" },
  D = { "<cmd>Trouble workspace_diagnostics<cr>", "Workspace Diagnostics" },
  l = { "<cmd>Trouble loclist<cr>", "Location List" },
  q = { "<cmd>Trouble quickfix<cr>", "Quick Fix" },
  r = { "<cmd>Trouble lsp_references<cr>", "LSP References" },
  s = { "<cmd>Trouble lsp_definitions<cr>", "LSP Definitions" },
  i = { "<cmd>Trouble lsp_implementations<cr>", "LSP Implementations" },
  t = { "<cmd>Trouble lsp_type_definitions<cr>", "LSP Type Definitions" },
  T = { "<cmd>TodoTrouble cwd=. keywords=TODO,FIX,NOTE,TEST<cr>", "TODO" },
}

-- GIST
lvim.builtin.which_key.mappings["G"] = {
  name = "+Gist",
  a = { "<cmd>Gist -c -a<cr>", "Create Anon" },
  p = { "<cmd>Gist -c -p<cr>", "Create Private" },
  P = { "<cmd>Gist -c -P<cr>", "Create Public" },
  m = { "<cmd>Gist -c -m<cr>", "Create w/ ALL BufferS" },
  d = { "<cmd>Gist -d<cr>", "Delete" },
  f = { "<cmd>Gist -f<cr>", "Fork" },
  l = { "<cmd>Gist -l<cr>", "List" },
}

-- ZK
lvim.builtin.which_key.mappings["Z"] = {
  name = "+Zettelkasten",
  n = { "<cmd>ZkNew { title = vim.fn.input('Title: ') }<cr>", "New Note" },
  o = { "<cmd>ZkNotes { sort = { 'modified' } }<cr>", "Open Notes" },
  t = { "<cmd>ZkTags<cr>", "Note Tagged" },
  s = { "<cmd>ZkNotes { sort = { 'modified' }, match = { vim.fn.input('Search: ') } }<cr>", "Search Notes" },
  f = { "<cmd>:lua vim.lsp.buf.definition()<cr>", "Follow Link" },
  b = { "<cmd>ZkBacklinks<cr>", "Notes Linking Here" },
  l = { "<cmd>ZkLinks<cr>", "Notes Linked From Here" },
}

lvim.builtin.which_key.vmappings["Z"] = {
  name = "+Zettelkasten",
  s = { ":'<,'>ZkMatch<cr>", "Search Notes for Term" },
  n = { ":'<,'>ZkNewFromTitleSelection { dir = vim.fn.expand('%:p:h') }<cr>", "New Note with Title" },
  c = { ":'<,'>ZkNewFromContentSelection { dir = vim.fn.expand('%:p:h'), title = vim.fn.input('Title: ') }<cr>",
    "New Note from Selection" },
}

-- HASKELL
-- TODO: add missing ones from here https://github.com/MrcJkb/haskell-tools.nvim
lvim.builtin.which_key.mappings["h"] = {
  name = "+Haskell",
  h = {
    name = "Hoogle",
    s = { "<cmd>Telescope hoogle<cr>", "Hoogle Search" },
    S = { "<cmd>Telescope ht hoogle_signature<cr>", "Hoogle Signature" },
  },
  g = {
    name = "GHCi REPL",
    p = { "<cmd>lua require('haskell-tools').repl.toggle()<cr>", "Toggle GHCi for Package" },
    f = { "<cmd>lua require('haskell-tools').repl.toggle(vim.api.nvim_buf_get_name(0))<cr>", "Toggle GHCi File" },
    F = { "<cmd>lua require('haskell-tools').repl.load_file(vim.api.nvim_buf_get_name(0))<cr>", "Load File in REPL" },
    c = { "<cmd>lua require('haskell-tools').repl.paste(reg)<cr>", "Command to GHCi" },
    t = { "<cmd>lua require('haskell-tools').repl.paste_type(reg)<cr>", "Type to GHCi" },
    r = { "<cmd>lua require('haskell-tools').repl.reload()<cr>", "Reload GHCi" },
    q = { "<cmd>lua require('haskell-tools').repl.quit()<cr>", "Quit GHCi" },
  },
  o = {
    name = "Open Project Files",
    p = { "<cmd>HsProjectFile<cr>", "Project File" },
    c = { "<cmd>HsPackageCabal<cr>", "Package Cabal" },
    y = { "<cmd>HsPackageYaml<cr>", "Package YAML" },
  },
  s = {
    name = "Search, Live Grep",
    p = { "<cmd>Telescope ht package_files<cr>", "Search Project Files" },
    h = { "<cmd>Telescope ht package_hsfiles<cr>", "Search Haskell Files" },
    P = { "<cmd>Telescope ht package_grep<cr>", "Live Grep Files" },
    H = { "<cmd>Telescope ht package_hsgrep<cr>", "Live Grep Haskell" },
  },
  t = {
    name = "Testing with NeoTest",
    l = { "<cmd>lua require('neotest').run.run()<cr>", "NeoTest Line" },
    f = { "<cmd>lua require('neotest').run.run(vim.api.nvim_buf_get_name(0))<cr>", "NeoTest File" },
    s = { "<cmd>lua require('neotest').summary.toggle()<cr>", "NeoTest Summary" },
    o = { "<cmd>lua require('neotest').output.open()<cr>", "NeoTest Output" },
  }
}


-- TIDAL
lvim.builtin.which_key.mappings["T"] = {
  name = "+TidalCycles",
  B = { "<cmd>TermExec cmd='sclang' open=0<cr>", "Start SuperDirt" },
  T = { "<cmd>IronRepl<cr>", "Start Tidal" },
  R = { "<cmd>IronRestart<cr>", "Restart Tidal" },
  Q = { "<cmd>lua require('iron.core').close_repl(tidal)<cr>", "Quit Tidal" },
  h = { "<cmd>IronSend hush<cr>", "Hush" },
  H = { "<cmd>MundoToggle<cr>", "History" },
  p = { "<cmd>IronSend panic<cr>", "Panic" },
  M = { "<cmd>IronSend muteAll<cr>", "Mute All" },
  U = { "<cmd>IronSend unmuteAll<cr>", "Unmute All" },
  S = { "<cmd>IronSend unsoloAll<cr>", "Unsolo All" },
  l = { "<cmd>lua require('iron.core').send_line()<cr>", "Send Line" },
  f = { "<cmd>lua require('iron.core').send_file()<cr>", "Send File" },
  s = {
    "<cmd>lua require('iron.core').send(tidal, vim.api.nvim_get_current_line():match(\"^ *([^ ]+)\") .. \" solo\")<cr>",
    "Solo Line" },
  m = {
    "<cmd>lua require('iron.core').send(tidal, vim.api.nvim_get_current_line():match(\"^ *([^ ]+)\") .. \" mute\")<cr>",
    "Mute Line" },
  u = {
    "<cmd>lua require('iron.core').send(tidal, vim.api.nvim_get_current_line():match(\"^ *([^ ]+)\") .. \" unmute\")<cr>",
    "Unmute Line" },
}

lvim.builtin.which_key.vmappings["T"] = {
  name = "+TidalCycles",
  l = { "<cmd>lua require('iron.core').visual_send()<cr>", "Send Selected Lines" },
  h = { "<cmd>IronSend hush<cr>", "Hush" },
  p = { "<cmd>IronSend panic<cr>", "Panic" },
}
