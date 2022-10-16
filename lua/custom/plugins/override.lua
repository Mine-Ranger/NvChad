return {
  ["nvim-treesitter/nvim-treesitter"] = {
    ensure_installed = {
      "lua",
      "bash",
      "fish",
      "python",
    },
    -- highlight = {
    --   enable = true,
    --   use_languagetree = true,
    -- },
    -- indent = {
    --   enable = true,
    -- },
    rainbow = {
      enable = true,
      extended_mode = true,
      max_file_lines = nil,
    },
  },
}
