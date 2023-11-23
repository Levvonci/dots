return require('packer').startup(function(use)
	-- Configurations will go here soon
	use 'wbthomason/packer.nvim'
	use 'williamboman/mason.nvim'
	use 'williamboman/mason-lspconfig.nvim'
	use 'neovim/nvim-lspconfig'
	-- Hrsh7th Code Completion Suite
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-nvim-lua'
	use 'hrsh7th/cmp-nvim-lsp-signature-help'
	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/vim-vsnip'
	use { "catppuccin/nvim", as = "catppuccin" }
	use "stevearc/conform.nvim"
	use "windwp/nvim-autopairs"
	use "lukas-reineke/indent-blankline.nvim"
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional, for file icons
		},
		-- Dracula theme for styling
		-- use 'Mofiqul/dracula.nvim'
		--  use { "catppuccin/nvim", as = "catppuccin" }
	}

	use {
		'folke/trouble.nvim',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional, for file icons
		},


	}

	-- for autoformatting
	use "elentok/format-on-save.nvim"
	-- bufferline
	use { 'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons' }
	use 'folke/which-key.nvim'
	-- Treesitter
	use {
		-- recommended packer way of installing it is to run this function, copied from documentation
		'nvim-treesitter/nvim-treesitter',
		run = function()
			local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
			ts_update()
		end,

	}
	-- Lualine information / Status bar
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	-- Telescope used to fuzzy search files
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.4',
		requires = {
			'nvim-lua/plenary.nvim',
		},
	}
	-- Number line
	use "sitiom/nvim-numbertoggle"
	use {
		'nvimdev/dashboard-nvim',
		event = 'VimEnter',
		config = function()
			require('dashboard').setup {
				-- config
				theme = 'hyper',
				config = {
					footer = {},
					header = {
						" 										      ",
						" ⠀⠀⠀                                                                   ..;===+.      ",
						"                                                                 .:=iiiiii=+=        ",
						"                                                              .=i))=;::+)i=+,        ",
						"                                                           ,=i);)I)))I):=i=;         ",
						"                                                        .=i==))))ii)))I:i++          ",
						"                                                      +)+))iiiiiiii))I=i+:'          ",
						"                                 .,:;;++++++;:,.       )iii+:::;iii))+i='            ",
						"                              .:;++=iiiiiiiiii=++;.    =::,,,:::=i));=+'             ",
						"                            ,;+==ii)))))))))))ii==+;,      ,,,:=i))+=:               ",
						"                          ,;+=ii))))))IIIIII))))ii===;.    ,,:=i)=i+                 ",
						"                         ;+=ii)))IIIIITIIIIII))))iiii=+,   ,:=));=,                  ",
						"                       ,+=i))IIIIIITTTTTITIIIIII)))I)i=+,,:+i)=i+                    ",
						"                      ,+i))IIIIIITTTTTTTTTTTTI))IIII))i=::i))i='                     ",
						"                     ,=i))IIIIITLLTTTTTTTTTTIITTTTIII)+;+i)+i`                       ",
						"                     =i))IIITTLTLTTTTTTTTTIITTLLTTTII+:i)ii:'                        ",
						"                    +i))IITTTLLLTTTTTTTTTTTTLLLTTTT+:i)))=,                          ",
						"                    =))ITTTTTTTTTTTLTTTTTTLLLLLLTi:=)IIiii;                          ",
						"                   .i)IIITTTTTTTTLTTTITLLLLLLLT);=)I)))))i;                          ",
						"                   :))IIITTTTTLTTTTTTLLHLLLLL);=)II)IIIIi=:                          ",
						"                   :i)IIITTTTTTTTTLLLHLLHLL)+=)II)ITTTI)i=                           ",
						"                   .i)IIITTTTITTLLLHHLLLL);=)II)ITTTTII)i+                           ",
						"                   =i)IIIIIITTLLLLLLHLL=:i)II)TTTTTTIII)i'                           ",
						"                 +i)i)))IITTLLLLLLLLT=:i)II)TTTTLTTIII)i;                            ",
						"               +ii)i:)IITTLLTLLLLT=;+i)I)ITTTTLTTTII))i;                             ",
						"              =;)i=:,=)ITTTTLTTI=:i))I)TTTLLLTTTTTII)i;                              ",
						"            +i)ii::,  +)IIITI+:+i)I))TTTTLLTTTTTII))=,                               ",
						"          :=;)i=:,,    ,i++::i))I)ITTTTTTTTTTIIII)=+'                                ",
						"        .+ii)i=::,,   ,,::=i)))iIITTTTTTTTIIIII)=+                                   ",
						"       ,==)ii=;:,,,,:::=ii)i)iIIIITIIITIIII))i+:'                                    ",
						"      +=:))i==;:::;=iii)+)=  `:i)))IIIII)ii+'                                        ",
						"    .+=:))iiiiiiii)))+ii;                                                            ",
						"   .+=;))iiiiii)));ii+                                                               ",
						"  .+=i:)))))))=+ii+                                                                  ",
						" .;==i+::::=)i=;                                                                     ",
						" ,+==iiiiii+,                                                                        ",
						"  +=+++;⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                                  			      ",
						" 										      ",
						" 										      ",
					},

					week_header = {
						enable = false,
					},
					mru = { limit = 10, icon = '  ', label = 'Most Recent Files', cwd_only = false },
					shortcut = {
						{ desc = '󰊳 Update', group = '@property', action = 'PackerSync', key = 'u' },
						{
							icon = '󰭎 ',
							icon_hl = '@variable',
							desc = 'Files',
							group = 'Label',
							action = 'Telescope find_files hidden=true',
							key = 'f',
						},



						--{
						-- icon = ''	
						--   desc = ' Apps',
						--   group = 'Label',
						--   action = 'Telescope diagnostics',
						--   key = 'a',
						--},
						-- {
						--   desc = ' dotfiles',
						--   group = 'Number',
						--   action = 'Telescope dotfiles',
						--   key = 'd',
						-- },
					},
				},
			}
		end,
		requires = { 'nvim-tree/nvim-web-devicons' }
	}
end)
