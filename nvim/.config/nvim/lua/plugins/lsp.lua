return {
    'neovim/nvim-lspconfig',
    config = function(_, opts)
        require('lspconfig').clangd.setup{
            cmd = {
                'clangd-15',
                '--background-index',
                '--header-insertion=never',
                '--completion-style=detailed',
            },
            root_dir = function(path_)
                vim.fs.dirname(
                    vim.fs.find(
                        {
                            'compile_commands.json',
                        }, 
                        { 
                            upwards = true,
                            path = path_,
                        }
                    )[1]
                )
            end,
        }
        vim.diagnostic.config{
            underline = false,
            virtual_text = false,
            severity_sort = true,
        }
    end,
}
