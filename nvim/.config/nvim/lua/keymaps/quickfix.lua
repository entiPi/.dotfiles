vim.keymap.set('n', '<leader>cn', ':cn<cr>', {}) -- next
vim.keymap.set('n', '<leader>cp', ':cp<cr>', {}) -- previous
vim.keymap.set('n', '<leader>cc', require('funcs.toggle-quickfix').toggle_quickfix, {}) -- toggle open/close
