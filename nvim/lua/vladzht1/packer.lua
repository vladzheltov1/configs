-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- Telecope.
	use {
		'nvim-telescope/telescope.nvim',
		requires = {
			'nvim-lua/popup.nvim',
			'nvim-lua/plenary.nvim',
		}
	}

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {'williamboman/mason.nvim'},           -- Optional
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},         -- Required
      {'hrsh7th/cmp-nvim-lsp'},     -- Required
      {'hrsh7th/cmp-buffer'},       -- Optional
      {'hrsh7th/cmp-path'},         -- Optional
      {'saadparwaiz1/cmp_luasnip'}, -- Optional
      {'hrsh7th/cmp-nvim-lua'},     -- Optional

      -- Snippets
      {'L3MON4D3/LuaSnip'},             -- Required
      {'rafamadriz/friendly-snippets'}, -- Optional
    }
  }

	-- Debugger.
	use 'mfussenegger/nvim-dap'
	use {
		"rcarriga/nvim-dap-ui",
		requires = {
			"mfussenegger/nvim-dap"
		}
	}


	-- General UI.
	use 'nvim-tree/nvim-web-devicons' -- A bunch of plugins uses this.
	use 'j-hui/fidget.nvim'
	use 'akinsho/toggleterm.nvim'
	use 'rcarriga/nvim-notify'
	use {
		'nvim-lualine/lualine.nvim',
		requires = {
			'kyazdani42/nvim-web-devicons',
			opt = true
		}
	}
	use 'glepnir/dashboard-nvim'
	use {
		'romgrk/barbar.nvim',
		requires = "nvim-tree/nvim-web-devicons",
	}
	use {
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
	}
	use {
		"folke/noice.nvim",
		requires = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify"
		}
	}
	-- TODO
	use {
		"folke/todo-comments.nvim",
		requires = "nvim-lua/plenary.nvim",
	}

	-- Programming experience.
	-- TODO
	use 'lukas-reineke/indent-blankline.nvim'
	use 'mg979/vim-visual-multi'
	use 'RRethy/vim-illuminate'
	use 'windwp/nvim-autopairs'
	use 'preservim/nerdcommenter'
	use 'tpope/vim-commentary'
	use 'brooth/far.vim'
	use {
		'ggandor/leap.nvim',
		requires = {
			'tpope/vim-repeat'
		}
	}

	-- Git.
	-- TODO
	use 'lewis6991/gitsigns.nvim'
	use 'sindrets/diffview.nvim'
	use 'akinsho/git-conflict.nvim'
	use 'kdheepak/lazygit.nvim'
	use 'ThePrimeagen/git-worktree.nvim'

	-- Neovim helpers.
	use 'folke/which-key.nvim'
	use 'sudormrfbin/cheatsheet.nvim'

	-- Filesystem.
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons'
		},
	}

	use {
		'vim-airline/vim-airline'
	}


	use 'neovim/nvim-lspconfig'
	use {
		"glepnir/lspsaga.nvim",
		branch = "main",
	}
	use {
		'L3MON4D3/LuaSnip',
		requires = {
			'saadparwaiz1/cmp_luasnip'
		}
	}
	use {
		'hrsh7th/nvim-cmp',
		requires = {
			'hrsh7th/cmp-omni',
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-buffer',
			'hrsh7th/cmp-path',
			'hrsh7th/cmp-cmdline'
		}
	}

	-- Language specific.
	use 'JuliaEditorSupport/julia-vim'
	use 'lervag/vimtex'

	-- Fun.
	use 'eandrju/cellular-automaton.nvim'

	-- Theme using.
vim.cmd('set cursorlineopt=both')
vim.cmd('set cursorlineopt=both')
	use 'AlexvZyl/nordic.nvim'


	use {'nvim-treesitter/nvim-treesitter', {run = ":TSUpdate"}}
	use {'nvim-treesitter/playground'}
	use {'theprimeagen/harpoon'}

	-- List of nice themes:
	----------------------------------------
	-- use 'morhetz/gruvbox'
	-- use 'sainnhe/gruvbox-material'
	-- use 'EdenEast/nightfox.nvim'
	-- use 'catppuccin/nvim'
	-- use 'folke/tokyonight.nvim'
	-- use 'sainnhe/everforest'
	-- use 'sainnhe/edge'
	-- use 'shaunsingh/nord.nvim'
	-- use 'dracula/vim'
	-- use 'joshdick/onedark.vim'
	-- use 'sam4llis/nvim-tundra'
	-- use 'rebelot/kanagawa.nvim'
	-- use 'cocopon/iceberg.vim'
	-- use 'marko-cerovac/material.nvim'
	-- use 'sainnhe/sonokai'
	----------------------------------------
end)
