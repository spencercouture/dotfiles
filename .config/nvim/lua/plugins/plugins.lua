return {
  { "RRethy/base16-nvim", name = "base16-nvim", lazy = false},
  -- add git-conflict to help with merge conflicts
  { "akinsho/git-conflict.nvim", version = "*", config = true },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
  },
  { "ellisonleao/glow.nvim", config = true, cmd = "Glow" },
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        tcl = { "intact_nagelfar" },
      },
      linters = {
        intact_nagelfar = {
          cmd = "intact-nagelfar",
          append_fname = true,
          stdin = false,
          stream = "both",
          ignore_exitcode = true,
          parser = require("lint.parser").from_errorformat("%f: %l: %t %m,%-GChecking file %f"),
        },
      },
    },
  },

  {
    "chipsenkbeil/distant.nvim",
    branch = "v0.3",
    config = function()
      require("distant"):setup()
    end,
  },

  {
    -- The plugin location on GitHub
    "vimwiki/vimwiki",
    -- The configuration for the plugin
    init = function()
      vim.g.vimwiki_list = {
        {
          -- Here will be the path for your wiki
          path = "~/vimwiki/",
          -- The syntax for the wiki
          syntax = "markdown",
          ext = "md",
        },
      }
    end,
  },

  require("conform").setup({
    formatters_by_ft = {
      markdown = { "prettier" },
      yaml = { "prettier" },
      lua = { "stylua" },
      -- Conform will run multiple formatters sequentially
      python = { "isort", "black" },
      -- Use a sub-list to run only the first available formatter
      javascript = { { "prettierd", "prettier" } },
    },
  }),

    require("blink.cmp").setup({
        completion = {
            list = {
                selection = { preselect = false, auto_insert = true }
            },
        }
    }),
}
