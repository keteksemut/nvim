-- plugins/treesitter.lua
return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  event = { 'BufReadPost', 'BufNewFile' },
  opts = {
    ensure_installed = "all",
    highlight = { enable = true },
    indent = { enable = true },
    autotag = { enable = true },
  },
  config = function(_, opts)
    require('nvim-treesitter.configs').setup(opts)
  end,
  dependencies = {
    'windwp/nvim-ts-autotag',
  },
}

