-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/lvnc/.cache/nvim/packer_hererocks/2.1.1700008891/share/lua/5.1/?.lua;/Users/lvnc/.cache/nvim/packer_hererocks/2.1.1700008891/share/lua/5.1/?/init.lua;/Users/lvnc/.cache/nvim/packer_hererocks/2.1.1700008891/lib/luarocks/rocks-5.1/?.lua;/Users/lvnc/.cache/nvim/packer_hererocks/2.1.1700008891/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/lvnc/.cache/nvim/packer_hererocks/2.1.1700008891/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["bufferline.nvim"] = {
    loaded = true,
    path = "/Users/lvnc/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  catppuccin = {
    loaded = true,
    path = "/Users/lvnc/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/lvnc/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/lvnc/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lsp-signature-help"] = {
    loaded = true,
    path = "/Users/lvnc/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp-signature-help"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/Users/lvnc/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/lvnc/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/Users/lvnc/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  ["conform.nvim"] = {
    loaded = true,
    path = "/Users/lvnc/.local/share/nvim/site/pack/packer/start/conform.nvim",
    url = "https://github.com/stevearc/conform.nvim"
  },
  ["dashboard-nvim"] = {
    config = { "\27LJ\2\n�\27\0\0\6\0\16\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0004\4\0\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0034\4\3\0005\5\f\0>\5\1\0045\5\r\0>\5\2\4=\4\14\3=\3\15\2B\0\2\1K\0\1\0\vconfig\rshortcut\1\0\6\tdesc\nFiles\vaction%Telescope find_files hidden=true\ficon_hl\14@variable\bkey\6f\ngroup\nLabel\ticon\n󰭎 \1\0\4\tdesc\16󰊳 Update\bkey\6u\ngroup\14@property\vaction\15PackerSync\bmru\1\0\4\nlimit\3\n\nlabel\22Most Recent Files\rcwd_only\1\ticon\n  \16week_header\1\0\1\venable\1\vheader\1(\0\0\22 \t\t\t\t\t\t\t\t\t\t      ` ⠀⠀⠀                                                                   ..;===+.      Z                                                                 .:=iiiiii=+=        Z                                                              .=i))=;::+)i=+,        Z                                                           ,=i);)I)))I):=i=;         Z                                                        .=i==))))ii)))I:i++          Z                                                      +)+))iiiiiiii))I=i+:'          Z                                 .,:;;++++++;:,.       )iii+:::;iii))+i='            Z                              .:;++=iiiiiiiiii=++;.    =::,,,:::=i));=+'             Z                            ,;+==ii)))))))))))ii==+;,      ,,,:=i))+=:               Z                          ,;+=ii))))))IIIIII))))ii===;.    ,,:=i)=i+                 Z                         ;+=ii)))IIIIITIIIIII))))iiii=+,   ,:=));=,                  Z                       ,+=i))IIIIIITTTTTITIIIIII)))I)i=+,,:+i)=i+                    Z                      ,+i))IIIIIITTTTTTTTTTTTI))IIII))i=::i))i='                     Z                     ,=i))IIIIITLLTTTTTTTTTTIITTTTIII)+;+i)+i`                       Z                     =i))IIITTLTLTTTTTTTTTIITTLLTTTII+:i)ii:'                        Z                    +i))IITTTLLLTTTTTTTTTTTTLLLTTTT+:i)))=,                          Z                    =))ITTTTTTTTTTTLTTTTTTLLLLLLTi:=)IIiii;                          Z                   .i)IIITTTTTTTTLTTTITLLLLLLLT);=)I)))))i;                          Z                   :))IIITTTTTLTTTTTTLLHLLLLL);=)II)IIIIi=:                          Z                   :i)IIITTTTTTTTTLLLHLLHLL)+=)II)ITTTI)i=                           Z                   .i)IIITTTTITTLLLHHLLLL);=)II)ITTTTII)i+                           Z                   =i)IIIIIITTLLLLLLHLL=:i)II)TTTTTTIII)i'                           Z                 +i)i)))IITTLLLLLLLLT=:i)II)TTTTLTTIII)i;                            Z               +ii)i:)IITTLLTLLLLT=;+i)I)ITTTTLTTTII))i;                             Z              =;)i=:,=)ITTTTLTTI=:i))I)TTTLLLTTTTTII)i;                              Z            +i)ii::,  +)IIITI+:+i)I))TTTTLLTTTTTII))=,                               Z          :=;)i=:,,    ,i++::i))I)ITTTTTTTTTTIIII)=+'                                Z        .+ii)i=::,,   ,,::=i)))iIITTTTTTTTIIIII)=+                                   Z       ,==)ii=;:,,,,:::=ii)i)iIIIITIIITIIII))i+:'                                    Z      +=:))i==;:::;=iii)+)=  `:i)))IIIII)ii+'                                        Z    .+=:))iiiiiiii)))+ii;                                                            Z   .+=;))iiiiii)));ii+                                                               Z  .+=i:)))))))=+ii+                                                                  Z .;==i+::::=)i=;                                                                     Z ,+==iiiiii+,                                                                        b  +=+++;⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                                  \t\t\t      \22 \t\t\t\t\t\t\t\t\t\t      \22 \t\t\t\t\t\t\t\t\t\t      \vfooter\1\0\0\1\0\1\ntheme\nhyper\nsetup\14dashboard\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/lvnc/.local/share/nvim/site/pack/packer/opt/dashboard-nvim",
    url = "https://github.com/nvimdev/dashboard-nvim"
  },
  ["format-on-save.nvim"] = {
    loaded = true,
    path = "/Users/lvnc/.local/share/nvim/site/pack/packer/start/format-on-save.nvim",
    url = "https://github.com/elentok/format-on-save.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/Users/lvnc/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/Users/lvnc/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/Users/lvnc/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/Users/lvnc/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/Users/lvnc/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/lvnc/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/lvnc/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-numbertoggle"] = {
    loaded = true,
    path = "/Users/lvnc/.local/share/nvim/site/pack/packer/start/nvim-numbertoggle",
    url = "https://github.com/sitiom/nvim-numbertoggle"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/Users/lvnc/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/lvnc/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/lvnc/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/lvnc/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/lvnc/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/lvnc/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["trouble.nvim"] = {
    loaded = true,
    path = "/Users/lvnc/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/Users/lvnc/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  },
  ["which-key.nvim"] = {
    loaded = true,
    path = "/Users/lvnc/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'dashboard-nvim'}, { event = "VimEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
