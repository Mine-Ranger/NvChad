--IDE settings
vim.o.guifont = "JetBrainsMono Nerd Font:h10"
vim.o.shell = "/usr/bin/fish"
vim.g.mapleader = ";"

vim.o.relativenumber = true
vim.o.wrap = false
vim.o.smartindent = true

-- code folding
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.cmd "autocmd BufReadPost,FileReadPost * normal zR"
