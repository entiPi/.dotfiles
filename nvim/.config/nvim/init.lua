require('plugins')
require('keymaps')


-- load colorscheme
vim.cmd("colorscheme nightfox")


-- search in current directory for local config file
vim.o.exrc = true


-- indentation settings
vim.o.expandtab = true    -- Hitting Tab in insert mode will produce spaces
vim.o.tabstop = 4         -- Number of spaces to use in editing mode.
vim.o.shiftwidth = 2      -- Number of spaces to use for each step of (auto)indent.

vim.o.cinoptions = table.concat({
   '>2s', -- two shiftwidth for "normal" indent (after open-brace, if, for, while, etc.)
   '(s',  -- one shiftwidth after opening parenthesis and newline
   'N-2s', -- no indention for namespace-blocks
}, ',')
vim.o.cindent = true


-- comments autoformatting
vim.opt.formatoptions:remove('r') -- comment leader on 'Enter'
vim.opt.formatoptions:remove('o') -- comment leader on 'o'


-- encoding
vim.o.encoding = 'utf-8'

-- use UNIX fileformat (newline-only line endings)
vim.o.fileformat = unix


-- number formats for Ctrl+A and Ctrl+X
vim.o.nrformats=alpha,octal,hex


-- hybrid line numbering
vim.o.number = true
vim.o.relativenumber = true

-- match highlighting
vim.o.matchpairs = table.concat({vim.o.matchpairs,
   '<:>', -- opening/closing angle brackets
   '=:;', -- assignment pairs
}, ',')


-- show spaces in a disinguishable way
--   tabs as special character
--   trailing spaces as special character
vim.o.list = true
vim.o.listchars = 'tab:▸ ,trail:·,nbsp:⊕'

-- autocommands
-- remove trailing whitespaces
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*" },
  command = [[%s/\s\+$//e]],
})

-- filetypes
vim.filetype.add({extension = {bats = "bash"}})
