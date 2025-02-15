return {
  ["nvim-treesitter/nvim-treesitter"] = {
    ensure_installed = {
      "lua",
      "bash",
      "fish",
      "python",
      "nix"
    },
    rainbow = {
      enable = true,
      extended_mode = true,
      max_file_lines = nil,
    },
  },
}
