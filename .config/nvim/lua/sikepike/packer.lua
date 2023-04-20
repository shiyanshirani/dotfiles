vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)

	use 'wbthomason/packer.nvim' -- Packer can manage itself
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		-- or                            , branch = '0.1.x',  -- Telescope
		requires = { {'nvim-lua/plenary.nvim'} } }

	use 'nyoom-engineering/oxocarbon.nvim' -- Colorscheme
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use {
		'VonHeikemen/lsp-zero.nvim',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lsp'}, {'hrsh7th/cmp-nvim-lua'},

			-- Snippets
			{'L3MON4D3/LuaSnip'},
			-- Snippet Collection (Optional)
			{'rafamadriz/friendly-snippets'}
	}}
	use 'preservim/nerdtree'         -- NERDTree
	use 'tpope/vim-commentary'       -- Comment
	use 'romainl/vim-cool'           -- Disables highlighting when done searching
	use {
		"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end -- Autopairing for brackets, quotations ...
	}
	use 'averms/black-nvim' 				 -- Black (in-place formatter)
	use 'nvim-telescope/telescope-file-browser.nvim' -- Telescope file browser
	use {
		'nvim-lualine/lualine.nvim',
		-- requires = { 'kyazdani49/nvim-web-devicons', opt = true }
	}
	use 'mhartington/formatter.nvim'
	use 'sbdchd/neoformat'
	use({
		"kylechui/nvim-surround",
		tag = "*", -- Use for stability; omit to use `main` branch for the latest features
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end
	})
end)
