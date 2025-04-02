return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },
  { "rose-pine/neovim", name = "rose-pine" },
  { "mellow-theme/mellow.nvim", name = "mellow" },
  { "catppuccin/nvim", name = "catppuccin" },
  { "rebelot/kanagawa.nvim", name = "kanagawa" },
{"RRethy/base16-nvim", name="base16-nvim" },
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "base16-chalk",
    },
  },
}
