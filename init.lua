require 'configs.options'
require 'configs.keymaps'

vim.wo.cursorline = true

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end

---@type vim.Option
local rtp = vim.opt.rtp
rtp:prepend(lazypath)

require('lazy').setup({{
    -- `lazydev` configures Lua LSP for your Neovim config, runtime and plugins
    -- used for completion, annotations and signatures of Neovim apis
    'folke/lazydev.nvim',
    ft = 'lua',
    opts = {
      library = {
        -- Load luvit types when the `vim.uv` word is found
        { path = '${3rd}/luv/library', words = { 'vim%.uv' } },
      },
    },
  },
	{ import = 'plugins.treesitter'},
	{ import = 'plugins.neotree'},
	{ import = 'plugins.color'},
	{ import = 'plugins.bufferline'},
	{ import = 'plugins.lualine'},
	{ import = 'plugins.telescope'},
	{ import = 'plugins.lsp'},
	{ import = 'plugins.autocompletion'},
	{ import = 'plugins.autoformatting'},
	{ import = 'plugins.autopairs'},
	{ import = 'plugins.autotag'},
	{ import = 'plugins.surrounds'},
	{ import = 'plugins.indentguide'},
	{ import = 'plugins.fugitive'},
	{ import = 'plugins.whichkey'},
--	{ import = 'plugins.'},
--	{ import = 'plugins.'},
--	{ import = 'plugins.'},
--	{ import = 'plugins.'},
--	{ import = 'plugins.'},
});
