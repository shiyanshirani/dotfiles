vim.o.termguicolors = true
vim.opt.guicursor = ""
vim.opt.nu = true
vim.opt.scrolloff = 12
vim.opt.background = "dark"
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.autoindent = true
-- vim.cmd.colorscheme("kanagawa")
-- vim.cmd.colorscheme("deepwhite")
-- vim.cmd.colorscheme("nyoom")
-- vim.cmd.colorscheme("noirblaze")
-- vim.cmd.colorscheme("monochrome")
-- vim.cmd.colorscheme("gruvbox")
-- vim.cmd.colorscheme("monoglow")
-- vim.cmd.colorscheme("poimandres")
vim.cmd.colorscheme("bloop")
vim.cmd.nohlsearch = true
vim.cmd.noshowmode = true
vim.api.nvim_command("filetype plugin indent on")
vim.cmd([[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]])
vim.opt.cursorline = true
vim.opt.clipboard = "unnamedplus"
vim.updatetime = 10
vim.opt.undodir = vim.fn.expand("~/.config/nvim/.undodir")
vim.opt.undofile = true
vim.opt.ignorecase = true

vim.api.nvim_set_hl(0, "LineNr", { fg = "#b8bdb5" })

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,
	group = highlight_group,
	pattern = "*",
})

-- Set lualine as statusline
require("lualine").setup({
	options = {
		icons_enabled = false,
		-- theme = "onedark",
		theme = "deepwhite",
		component_separators = "|",
		section_separators = "",
	},
})

require("ibl").setup({
	scope = {
		show_start = false,
		show_end = false,
	},
})
require("bufferline").setup({})

-- Set the time (in milliseconds) that Neovim waits before
-- triggering the CursorHold event (3000ms = 3 seconds)
vim.opt.autoread = true
vim.opt.updatetime = 1500

-- Define an autocmd group specifically for managing buffer refreshing
vim.api.nvim_create_augroup("AutoBufferRefresh", { clear = true })

-- When the cursor is held still for 'updatetime', check if the file has changed on disk
vim.api.nvim_create_autocmd("CursorHold", {
	group = "AutoBufferRefresh",
	command = "checktime",
	pattern = "*",
})
