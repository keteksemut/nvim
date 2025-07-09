return {
  "stevearc/conform.nvim",
  opts = {
    format_on_save = {
      timeout_ms = 500,
      lsp_fallback = true,
    },
    formatters_by_ft = {
      lua = { "stylua" },
      javascript = { "prettier" },
      typescript = { "prettier" },
      python = { "black" },
      vue = { "prettier" },
    },
    formatters = {
      stylua = {
        command = '"C:\\Users\\WINDOWS 10\\AppData\\Local\\nvim-second-data\\mason\\bin\\stylua.CMD"',
        args = {
          "--search-parent-directories",
          "--stdin-filepath",
          "$FILENAME",
          "-",
        },
        stdin = true,
      },
    },
  },
  keys = {
    {
      "<leader>f",
      function()
        require("conform").format({ async = true, lsp_fallback = true })
      end,
      desc = "Format File",
    },
  },
}

