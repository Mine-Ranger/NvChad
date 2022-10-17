return {
  ["zane-/cder.nvim"] = {
    after = "telescope.nvim",
    config = function()
      require("telescope").load_extension "cder"
    end,
  },
  ["p00f/nvim-ts-rainbow"] = {
    after = "nvim-treesitter",
  },
  ["tpope/vim-fugitive"] = {
    cmd = { "G", "Git" },
  },
  ["neovim/nvim-lspconfig"] = {
    event = "VimEnter",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },
  ["folke/trouble.nvim"] = {
    requires = "kyazdani42/nvim-web-devicons",
    after = "nvim-lspconfig",
    config = function()
      require("trouble").setup {}
    end,
  },
  ["ThePrimeagen/refactoring.nvim"] = {
    requires = {
      { "nvim-lua/plenary.nvim" },
      { "nvim-treesitter/nvim-treesitter" },
    },
    config = function()
      require("refactoring").setup {}
    end,
  },
  ["wellle/targets.vim"] = {
    after = "nvim-lspconfig",
  },
  ["chaoren/vim-wordmotion"] = {
    event = "VimEnter",
  },
  ["simrat39/symbols-outline.nvim"] = {
    cmd = { "SymbolsOutline", "SymbolsOutlineOpen", "SymbolsOutlineClose" },
  },
  ["ggandor/leap.nvim"] = {
    event = "VimEnter",
    config = function()
      require("leap").set_default_keymaps()
    end,
  },
  ["gbrlsnchs/telescope-lsp-handlers.nvim"] = {
    after = "telescope.nvim",
    config = function()
      require("telescope").load_extension "lsp_handlers"
      require("telescope").load_extension "refactoring" --loading refactoing extension
    end,
  },
  ["stevearc/aerial.nvim"] = {
    after = "telescope.nvim",
    config = function()
      require("aerial").setup()
      require("telescope").load_extension "aerial"
    end,
  },
  ["nvim-telescope/telescope-frecency.nvim"] = {
    after = "telescope.nvim",
    requires = { "kkharji/sqlite.lua" },
    config = function()
      require("telescope").load_extension "frecency"
    end,
  },
  ["TimUntersberger/neogit"] = {
    requires = "nvim-lua/plenary.nvim",
    cmd = "Neogit",
    config = function ()
      local neogit = require('neogit')
      neogit.setup {}
    end
  },
}
