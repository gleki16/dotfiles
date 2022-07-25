vim.g.mapleader = ' '           -- 空格键作为 leader 键

vim.api.nvim_set_keymap('n', '<leader>xc', ':q<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>xs', ':w<CR>', { noremap = true, silent = true })
