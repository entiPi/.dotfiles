-- set leader to comma
vim.g.mapleader = ','


-- plugin keymaps
require('keymaps.git')
require('keymaps.lsp')
require('keymaps.telescope')
require('keymaps.quickfix')


-- show/hide line numbers
vim.keymap.set('n', '<F2>', ':set number! relativenumber!<cr>', {})
