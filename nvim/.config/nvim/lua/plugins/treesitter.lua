return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  setup = function()
    require "configs.treesitter"
  end,
}
