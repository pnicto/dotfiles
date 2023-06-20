-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

-- jk to esc
map("i", "jk", "<Esc>")
map("i", "kj", "<Esc>")
map("i", "JK", "<Esc>")
map("i", "KJ", "<Esc>")
map("n", "<A-f>", ":silent !tmux neww tmux-sessionizer.sh<CR>")

-- yank to system clipboard
map({ "v", "n" }, "<leader>y", '"+y')
