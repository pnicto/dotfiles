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
    },
  },
  { "echasnovski/mini.pairs", enabled = false },
  { "folke/noice.nvim",       enabled = false },
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
}
