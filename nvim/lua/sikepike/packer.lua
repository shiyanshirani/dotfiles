vim.cmd([[packadd packer.nvim]])
return require("packer").startup(function(use)
	use("wbthomason/packer.nvim") -- Packer can manage itself
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.4",
		-- or                            , branch = '0.1.x',  		-- Telescope
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	use("nyoom-engineering/oxocarbon.nvim") -- Colorscheme
	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
	use({
		"VonHeikemen/lsp-zero.nvim",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" },
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },
			{ "saadparwaiz1/cmp_luasnip" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-nvim-lua" },
		},
	})
	use({
		"L3MON4D3/LuaSnip",
		-- follow latest release.
		tag = "v2.3.0", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
		run = "make install_jsregexp",
		dependencies = { "rafamadriz/friendly-snippets" },
	})
	use("preservim/nerdtree") -- NERDTree
	use("tpope/vim-commentary") -- Comment
	use("romainl/vim-cool") -- Disables highlighting when done searching
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end, -- Autopairing for brackets, quotations ...
	})
	use("nvim-telescope/telescope-file-browser.nvim") -- Telescope file browser
	use({
		"nvim-lualine/lualine.nvim",
	})
	use({
		"stevearc/conform.nvim",
		config = function()
			require("conform").setup()
		end,
	})
	use("zapling/mason-conform.nvim")
	use({
		"kylechui/nvim-surround",
		tag = "*", -- Use for stability; omit to use `main` branch for the latest features
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end,
	})
	use("folke/tokyonight.nvim") -- tokyo theme
	use("mhinz/vim-signify") -- git signs in buffer
	use("lukas-reineke/indent-blankline.nvim") -- visual indentation
	use("christoomey/vim-tmux-navigator") -- vim with tmux motions
	use("rebelot/kanagawa.nvim") -- gruvbox + tokyonight theme

	use({
		"olivercederborg/poimandres.nvim", -- colorscheme
		config = function()
			require("poimandres").setup({
				-- leave this setup function empty for default config
				-- or refer to the configuration section
				-- for configuration options
			})
		end,
	})
	use("kdheepak/monochrome.nvim")
	use({
		"Verf/deepwhite.nvim",
		config = function()
			vim.cmd([[colorscheme deepwhite]])
		end,
	})
end)
