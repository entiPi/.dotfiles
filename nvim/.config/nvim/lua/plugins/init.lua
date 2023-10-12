-- bootstrap plugin manager "lazy"
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- source plugins
require('lazy').setup({
    require('plugins.nightfox'),
    require('plugins.telescope'),
    require('plugins.surround'),
    require('plugins.treesitter'),
    require('plugins.lsp'),
    require('plugins.efm'),
})
