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
	use 'nvimdev/dashboard-nvim'
end)
