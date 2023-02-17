--Keybindings
local function map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("n", "<leader>,", ":cd ~/.config/nvim/lua<CR>")
map("n", "<leader>i", "i <Esc>r")
map("n", "<leader>I", "I <Esc>r")
map("n", "<leader>a", "a <Esc>r")
map("n", "<leader>A", "A <Esc>r")
map("n", "<leader>p", "\"_dP")
map("n", ";;", "A;<Esc>-")
map("n","<leader>fx",":!chmod +x %<CR>")

-- Telescope shortcuts
map("n", "<leader>cd", ":Telescope cder<CR>")
map("n", "<leader>j", ":Telescope aerial<CR>")
map("n", "<leader>fr", ":Telescope frecency<CR>")

-- Git shortcuts
map("n", "<leader>ga", ":G add %<CR>")
map("n", "<leader>gaa", ":G add -u<CR>")
map("n", "<leader>gA", ":G add .<CR>")
map("n", "<leader>gc", ":G commit ")
map("n", "<leader>G", ":G ")
map("n", "<leader>g", ":Neogit<CR>")

-- Trouble.nvim
map("n","<leader>tx ",":TroubleToggle<CR>")
map("n","<leader>tw ",":TroubleToggle workspace_diagnostics<CR>")
map("n","<leader>td ",":TroubleToggle document_diagnostics<CR>")
map("n","<leader>tq ",":TroubleToggle quickfix<CR>")
map("n","<leader>tl ",":TroubleToggle loclist<CR>")
map("n","gr",":TroubleToggle lsp_references<CR>")

-- Symbols def
map("n","<leader>d",":SymbolsOutline<CR>")

-- Refactor.nvim
-- Remaps for the refactoring operations currently offered by the plugin
vim.api.nvim_set_keymap("v", "<leader>re", [[ <Esc><Cmd>lua require('refactoring').refactor('Extract Function')<CR>]], {noremap = true, silent = true, expr = false})
vim.api.nvim_set_keymap("v", "<leader>rf", [[ <Esc><Cmd>lua require('refactoring').refactor('Extract Function To File')<CR>]], {noremap = true, silent = true, expr = false})
vim.api.nvim_set_keymap("v", "<leader>rv", [[ <Esc><Cmd>lua require('refactoring').refactor('Extract Variable')<CR>]], {noremap = true, silent = true, expr = false})
vim.api.nvim_set_keymap("v", "<leader>ri", [[ <Esc><Cmd>lua require('refactoring').refactor('Inline Variable')<CR>]], {noremap = true, silent = true, expr = false})

-- Extract block doesn't need visual mode
vim.api.nvim_set_keymap("n", "<leader>rb", [[ <Cmd>lua require('refactoring').refactor('Extract Block')<CR>]], {noremap = true, silent = true, expr = false})
vim.api.nvim_set_keymap("n", "<leader>rbf", [[ <Cmd>lua require('refactoring').refactor('Extract Block To File')<CR>]], {noremap = true, silent = true, expr = false})

-- Inline variable can also pick up the identifier currently under the cursor without visual mode
vim.api.nvim_set_keymap("n", "<leader>ri", [[ <Cmd>lua require('refactoring').refactor('Inline Variable')<CR>]], {noremap = true, silent = true, expr = false})
vim.api.nvim_set_keymap("v","<leader>rr","<Esc><cmd>lua require('telescope').extensions.refactoring.refactors()<CR>",	{ noremap = true })
