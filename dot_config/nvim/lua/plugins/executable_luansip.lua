return {
  {
    "L3MON4D3/LuaSnip",
    config = function()
      require("luasnip.loaders.from_vscode").load({ paths = "~/.config/nvim/snippets" })
    end,
  },
}

-- return {
-- {
--   "nvimtools/none-ls.nvim",
--   event = { "BufReadPre", "BufNewFile" },
--   dependencies = { "mason.nvim" },
--   opts = function(_, opts)
--     local null_ls = require("null-ls")
--
--     opts.sources = vim.list_extend(opts, { null_ls.builtins.formatting.goimports })
--     -- opts.sources = vim.list_extend(opts, { null_ls.builtins.formatting.shfmt })
--     -- opts.sources = vim.list_extend(opts, { null_ls.builtins.formatting.stylua })
--     -- opts.sources = vim.list_extend(opts, { null_ls.builtins.formatting.prettier })
--     -- opts.sources = vim.list_extend(opts, { null_ls.builtins.formatting.black })
--     -- opts.sources = vim.list_extend(opts, { null_ls.builtins.formatting.isort })
--     -- opts.sources = vim.list_extend(opts, { null_ls.builtins.diagnostics.ruff })
--     -- opts.sources = vim.list_extend(opts, { null_ls.builtins.formatting.sql_formatter })
--     -- opts.sources = vim.list_extend(opts, { null_ls.builtins.formatting.gofumpt })
--     -- opts.sources = vim.list_extend(opts, { null_ls.builtins.diagnostics.golangci_lint })
--     -- opts.sources = vim.list_extend(opts, { null_ls.builtins.diagnostics.shellcheck })
--     -- opts.sources = vim.list_extend(opts, { null_ls.builtins.formatting.yamlfmt })
--   end,
-- },
-- }
