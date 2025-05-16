-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>sF", function()
  require("telescope").extensions.diff.diff_files({ hidden = true })
end, { desc = "Compare 2 files" })
vim.keymap.set("n", "<leader>sf", function()
  require("telescope").extensions.diff.diff_current({ hidden = true })
end, { desc = "Compare file with current" })

-- Setup our Vimwiki keybinds
vim.keymap.set("n", "<leader>wi", "<Plug>VimwikiIndex", {noremap = false, silent = true})
vim.keymap.set({"n", "v"}, "<leader>wD", "<Plug>VimwikiDeleteFile", {noremap = false, silent = true})
vim.keymap.set({"n", "v"}, "<C-Space>", "<Plug>VimwikiToggleListItem", {noremap = false, silent = true})
vim.keymap.set({"n", "v"}, "<Backspace>", "<Plug>VimwikiGoBackLink", {noremap = false, silent = true})

