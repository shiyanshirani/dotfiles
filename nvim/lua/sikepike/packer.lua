-- Bootstrap packer.nvim plugin manager
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Plugin manager
	use("wbthomason/packer.nvim") -- Packer can manage itself

	-- Fuzzy finder and file navigation
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.4", -- Telescope fuzzy finder
		requires = { { "nvim-lua/plenary.nvim" } }, -- Required dependency for Telescope
	})
	use("nvim-telescope/telescope-file-browser.nvim") -- File browser extension for Telescope

	-- Syntax highlighting and parsing
	use({
		"nvim-treesitter/nvim-treesitter",
		branch = "master", -- main branch requires Neovim 0.12+; pin to master for 0.11
		run = ":TSUpdate",
	}) -- Advanced syntax highlighting and code parsing

	-- LSP (Language Server Protocol) configuration
	use({
		"VonHeikemen/lsp-zero.nvim", -- LSP configuration helper
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" }, -- Core LSP configurations
			{ "williamboman/mason.nvim" }, -- LSP/DAP/Linter installer
			{ "williamboman/mason-lspconfig.nvim" }, -- Mason integration with lspconfig

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" }, -- Completion engine
			{ "hrsh7th/cmp-buffer" }, -- Buffer word completions
			{ "hrsh7th/cmp-path" }, -- File path completions
			{ "saadparwaiz1/cmp_luasnip" }, -- Snippet completions
			{ "hrsh7th/cmp-nvim-lsp" }, -- LSP completions
			{ "hrsh7th/cmp-nvim-lua" }, -- Lua API completions
		},
	})

	-- Snippet engine
	use({
		"L3MON4D3/LuaSnip", -- Snippet engine
		tag = "v2.3.0", -- Use stable release
		run = "make install_jsregexp", -- Build jsregexp for better performance
		dependencies = { "rafamadriz/friendly-snippets" }, -- Preconfigured snippets collection
	})

	-- Code formatting
	use({
		"stevearc/conform.nvim", -- Formatter integration
		config = function()
			require("conform").setup()
		end,
	})
	use("zapling/mason-conform.nvim") -- Mason integration for formatters

	-- File explorer and navigation
	use("preservim/nerdtree") -- File tree explorer
	use("christoomey/vim-tmux-navigator") -- Seamless navigation between vim and tmux panes

	-- Editing enhancements
	use("tpope/vim-commentary") -- Toggle comments with gc
	use({
		"windwp/nvim-autopairs", -- Auto-close brackets, quotes, etc.
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})
	use({
		"kylechui/nvim-surround", -- Add/change/delete surrounding pairs
		tag = "*", -- Use stable release
		config = function()
			require("nvim-surround").setup({})
		end,
	})

	-- Visual enhancements
	use("romainl/vim-cool") -- Auto-disable search highlight when done
	use("lukas-reineke/indent-blankline.nvim") -- Show indent guides
	use("mhinz/vim-signify") -- Show git diff in sign column
	use("akinsho/nvim-bufferline.lua") -- Buffer tabs at top of screen

	-- Statusline
	use({
		"nvim-lualine/lualine.nvim", -- Customizable statusline
	})

	-- Color schemes
	use("nyoom-engineering/oxocarbon.nvim") -- Oxocarbon theme
	use("folke/tokyonight.nvim") -- Tokyo Night theme
	use("rebelot/kanagawa.nvim") -- Kanagawa theme (Gruvbox + Tokyo Night inspired)
	use("kdheepak/monochrome.nvim") -- Monochrome theme
	use("Verf/deepwhite.nvim") -- Deep White theme
	use("aliqyan-21/darkvoid.nvim") -- Dark Void theme
	use("n1ghtmare/noirblaze-vim") -- Noir Blaze theme
	use("morhetz/gruvbox") -- Gruvbox theme
	use("wnkz/monoglow.nvim") -- Monoglow theme
	use({
		"olivercederborg/poimandres.nvim",
		config = function()
			require("poimandres").setup({
				bold_vert_split = false, -- use bold vertical separators
				dim_nc_background = false, -- dim 'non-current' window backgrounds
				disable_background = false, -- disable background
				disable_float_background = false, -- disable background for floats
				disable_italics = false, -- disable italics
			})
		end,
	}) -- Poimandres theme
	use("https://github.com/rktjmp/lush.nvim")
	use("https://github.com/nocksock/bloop.nvim")

	use("github/copilot.vim")
end)
