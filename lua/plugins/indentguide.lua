return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  event = { "BufReadPost", "BufNewFile" },
  opts = {
    indent = { char = "│" }, -- or "▏", "┊", etc
    scope = { enabled = true },
  }
}
