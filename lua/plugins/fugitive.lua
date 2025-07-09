return {
  {
    "tpope/vim-fugitive",
    cmd = { "Git", "G", "Gdiffsplit", "Gvdiffsplit" },
    keys = {
      { "<leader>gs", "<cmd>Git<CR>", desc = "Fugitive: Git Status" },
      { "<leader>gc", "<cmd>Git commit<CR>", desc = "Fugitive: Git Commit" },
      { "<leader>gp", "<cmd>Git push<CR>", desc = "Fugitive: Git Push" },
      { "<leader>gl", "<cmd>Git pull<CR>", desc = "Fugitive: Git Pull" },
      { "<leader>gb", "<cmd>Git blame<CR>", desc = "Fugitive: Git Blame" },
    },
  },
}
