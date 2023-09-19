-- Global mappings.
vim.keymap.set('n', '<leader>de', vim.diagnostic.open_float)
vim.keymap.set('n', '<leader>dn', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>dp', vim.diagnostic.goto_prev)
vim.keymap.set('n', '<leader>dq', vim.diagnostic.setqflist)
vim.keymap.set('n', '<leader>ds', vim.diagnostic.open_float)

vim.keymap.set('n', '<leader>gh', '<cmd>ClangdSwitchSourceHeader<cr>')

vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = function(ev)

        -- Enable completion triggered by <c-x><c-o>
        vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

        -- Buffer local mappings.
        -- See `:help vim.lsp.*` for documentation on any of the below functions
        local opts = { buffer = ev.buf }
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
        vim.keymap.set('n', '<leader>ii', vim.lsp.buf.hover, opts)
        vim.keymap.set('n', '<leader>io', vim.lsp.buf.implementation, {})
        vim.keymap.set({'n', 'i'}, '<leader>ih', vim.lsp.buf.signature_help, opts)
        vim.keymap.set('n', '<leader>ar', vim.lsp.buf.rename, opts)
        vim.keymap.set({'n', 'v'}, '<leader>aa', vim.lsp.buf.code_action, opts)
        vim.keymap.set({'n', 'v'}, '<leader>af', vim.lsp.buf.format, opts)
  end,
})
