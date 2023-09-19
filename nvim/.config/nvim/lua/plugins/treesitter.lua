return {
    'nvim-treesitter/nvim-treesitter',
    build = function()
        require('nvim-treesitter.install').update({ with_sync = true })
    end,
    config = function ()
          local configs = require('nvim-treesitter.configs')

          configs.setup({
              ensure_installed = { 'c', 'cpp', 'cmake', 'lua', 'vim', 'vimdoc', 'bash', 'python', 'html' },
              sync_install = false,
              highlight = { enable = true },
              indent = { enable = false },
            })
        end,
}
