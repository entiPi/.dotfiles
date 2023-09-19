local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>bb', builtin.buffers, {})
vim.keymap.set('n', '<leader>hh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>r',  builtin.resume, {})

vim.keymap.set('n', '<leader>gg', require("telescope").extensions.live_grep_args.live_grep_args, { noremap = true })
