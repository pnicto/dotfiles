return {
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      style = "storm",
      styles = {
        comments = { italic = true },
        keyword = { bold = true, italic = true },
      },
    },
  },
  {
    "rcarriga/nvim-notify",
    opts = {
      background_colour = "#000000",
      top_down = false,
    },
  },
  { "echasnovski/mini.pairs", enabled = false },
  { "folke/noice.nvim", enabled = false },
  {
    "neovim/nvim-lspconfig",
    opts = {
      setup = {
        clangd = function(_, opts)
          opts.capabilities.offsetEncoding = { "utf-16" }
        end,
      },
    },
  },
  { "ActivityWatch/aw-watcher-vim" },
  {
    "xeluxee/competitest.nvim",
    dependencies = "MunifTanjim/nui.nvim",
    config = function()
      require("competitest").setup()
    end,
  },
  { "tpope/vim-fugitive" },
}
