-- Functional wrapper for mapping custom keybindings
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local keymap = vim.api.nvim_set_keymap
vim.g.mapleader = ","

-- Hotkeys for navigation between buffers
map("n", "<leader>e", ":bp<CR>")
map("n", "<leader>w", ":bn<CR>")
map("n", "<leader>v", "<C-w>v")
map("n", "<leader>h", "<C-w>s")
map("n", "<leader>d", "<C-w>c")

-- Hotkeys for formatting
map("n", "<F5>", ":!black .<CR>")
map("n", "<F6>", ":!isort .<CR>")
