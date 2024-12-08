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
-- vim.cmd.colorscheme("yugen")
vim.cmd.colorscheme("deepwhite")
-- vim.cmd.colorscheme("monochrome")
vim.cmd.nohlsearch = true
vim.cmd.noshowmode = true
vim.api.nvim_command("filetype plugin indent on")
vim.cmd([[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]])
vim.opt.cursorline = true
vim.opt.clipboard = unnamedplus
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
-- See `:help lualine.txt`
require("lualine").setup({
	options = {
		icons_enabled = false,
		theme = "onedark",
		component_separators = "|",
		section_separators = "",
	},
})

require("ibl").setup()
