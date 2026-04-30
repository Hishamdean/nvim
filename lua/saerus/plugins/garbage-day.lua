return {
  "zeioth/garbage-day.nvim",
  dependencies = "neovim/nvim-lspconfig",
  event = "VeryLazy",
  opts = {
    grace_period = 60 * 15, -- 15 minutes instead of 1 minute
    excluded_lsp_clients = {
      "ts_ls", -- TypeScript - needs to stay alive for go-to-definition
    },
  },
}
