return {
    'creativenull/efmls-configs-nvim',
    -- version = 'v1.x.x', -- version is optional, but recommended
    dependencies = { 'neovim/nvim-lspconfig' },
    config = function(_ , opts)
        local shellcheck = require('efmls-configs.linters.shellcheck')
        local stylua = require('efmls-configs.formatters.stylua')
        local ruff = require('efmls-configs.formatters.ruff')
        local pylint = require('efmls-configs.linters.pylint')
        local mypy = require('efmls-configs.linters.mypy')
        local languages = {
          sh = { shellcheck },
          lua = { stylua },
          python = { pylint, mypy, ruff }
        }

        local efmls_config = {
          filetypes = vim.tbl_keys(languages),
          settings = {
            rootMarkers = { '.git/' },
            languages = languages,
          },
          init_options = {
            documentFormatting = true,
            documentRangeFormatting = true,
          },
        }

        require('lspconfig').efm.setup(vim.tbl_extend('force', efmls_config, {}))
    end,
}
