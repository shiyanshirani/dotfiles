local builtin = require("telescope.builtin")
require('telescope').setup{defaults = { file_ignore_patterns = {"node_modules"}}} 
vim.keymap.set('n','<C-p>', builtin.find_files, {})
vim.keymap.set('n','<C-->', builtin.git_files, {})
vim.keymap.set('n','<C-m>', builtin.live_grep, {})
vim.keymap.set('n','<leader>b', builtin.buffers, {})
