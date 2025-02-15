-- tab to spaces
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4 
vim.opt.softtabstop = 4

require("lazy").setup({
    {"catppuccin/nvim"} ,
})

vim.cmd("colorscheme catppuccin-mocha")
