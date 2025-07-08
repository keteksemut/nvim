-- bufferline.lua
-- Add this to your Neovim configuration


-- Using lazy.nvim package manager
return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require("bufferline").setup {
      options = {
        mode = "buffers", -- set to "tabs" to only show tabpages instead
        style_preset = require("bufferline").style_preset.default, -- or minimal
        themable = true,
        numbers = "none", -- | "ordinal" | "buffer_id" | "both" | function({ ordinal, id, lower, raise }): string,
        close_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
        right_mouse_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
        left_mouse_command = "buffer %d", -- can be a string | function, see "Mouse actions"
        middle_mouse_command = nil, -- can be a string | function, see "Mouse actions"
        indicator = {
          icon = '▎', -- this should be omitted if indicator style is not 'icon'
          style = 'icon', -- | 'underline' | 'none',
        },
        buffer_close_icon = '󰅖',
        modified_icon = '●',
        close_icon = '',
        left_trunc_marker = '',
        right_trunc_marker = '',
        max_name_length = 30,
        max_prefix_length = 30, -- prefix used when a buffer is de-duplicated
        tab_size = 21,
        diagnostics = "nvim_lsp", -- | "nvim_lsp" | "coc",
        diagnostics_update_in_insert = false,
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
          return "("..count..")"
        end,
        offsets = {
          {
            filetype = "NvimTree",
            text = "File Explorer",
            text_align = "left",
            separator = true
          }
        },
        color_icons = true,
        show_buffer_icons = true,
        show_buffer_close_icons = true,
        show_close_icon = true,
        show_tab_indicators = true,
        show_duplicate_prefix = true,
        persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
        separator_style = "thick", -- | "slope" | "thick" | "thin" | { 'any', 'any' },
        enforce_regular_tabs = false,
        always_show_bufferline = true,
        hover = {
          enabled = true,
          delay = 200,
          reveal = {'close'}
        },
        sort_by = 'insert_after_current' -- |'insert_at_end' | 'id' | 'extension' | 'relative_directory' | 'directory' | 'tabs' | function(buffer_a, buffer_b)
      }
    }
        -- ✅ Move keymaps here
    local keymap = vim.keymap

    -- Navigate between buffers
    keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>', { desc = 'Next buffer' })
    keymap.set('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', { desc = 'Previous buffer' })

    -- Move buffers
    keymap.set('n', '<leader>bn', ':BufferLineMoveNext<CR>', { desc = 'Move buffer next' })
    keymap.set('n', '<leader>bp', ':BufferLineMovePrev<CR>', { desc = 'Move buffer previous' })

    -- Close buffers
    keymap.set('n', '<leader>bd', ':bdelete<CR>', { desc = 'Delete buffer' })
    keymap.set('n', '<leader>bD', ':bdelete!<CR>', { desc = 'Force delete buffer' })

    -- Go to buffer by number
    keymap.set('n', '<leader>1', ':BufferLineGoToBuffer 1<CR>', { desc = 'Go to buffer 1' })
    keymap.set('n', '<leader>2', ':BufferLineGoToBuffer 2<CR>', { desc = 'Go to buffer 2' })
    keymap.set('n', '<leader>3', ':BufferLineGoToBuffer 3<CR>', { desc = 'Go to buffer 3' })
    keymap.set('n', '<leader>4', ':BufferLineGoToBuffer 4<CR>', { desc = 'Go to buffer 4' })
    keymap.set('n', '<leader>5', ':BufferLineGoToBuffer 5<CR>', { desc = 'Go to buffer 5' })

    -- Pick buffer
    keymap.set('n', '<leader>bp', ':BufferLinePick<CR>', { desc = 'Pick buffer' })

    -- Close all buffers except current
    keymap.set('n', '<leader>bco', ':BufferLineCloseOthers<CR>', { desc = 'Close other buffers' })

    -- Close buffers to the right/left
    keymap.set('n', '<leader>bcr', ':BufferLineCloseRight<CR>', { desc = 'Close buffers to right' })
    keymap.set('n', '<leader>bcl', ':BufferLineCloseLeft<CR>', { desc = 'Close buffers to left' })
  end
} 

-- Alternative setup for other package managers (packer, vim-plug, etc.)
--[[
-- Add to your init.lua or plugins.lua
use {
  'akinsho/bufferline.nvim',
  tag = "*",
  requires = 'nvim-tree/nvim-web-devicons',
  config = function()
    require("bufferline").setup{
      -- Same options as above
    }
  end
}
]]


-- Additional useful commands:
-- :BufferLinePick - Pick a buffer to switch to
-- :BufferLinePickClose - Pick a buffer to close
-- :BufferLineCloseOthers - Close all other buffers
-- :BufferLineCloseRight - Close all buffers to the right
-- :BufferLineCloseLeft - Close all buffers to the left
-- :BufferLineSortByExtension - Sort buffers by extension
-- :BufferLineSortByDirectory - Sort buffers by directory



--[[ return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require("bufferline").setup {
     options = {
    mode = "buffers", -- set to "tabs" to only show tabpages instead
    style_preset = require('bufferline').style_preset.default,
    themable = true,
    numbers = "none", -- | "ordinal" | "buffer_id" | "both" | function({ ordinal, id, lower, raise }): string,
    close_command = "bdelete! %d",
    right_mouse_command = "bdelete! %d",
    left_mouse_command = "buffer %d",
    middle_mouse_command = nil,
    indicator = {
      icon = '▎', -- this should be omitted if indicator style is not 'icon'
      style = 'underline', -- 'icon' | 'underline' | 'none'
    },
    buffer_close_icon = '󰅖',
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
    max_name_length = 30,
    max_prefix_length = 30,
    tab_size = 21,
    diagnostics = "nvim_lsp", -- | "nvim_lsp" | "coc",
    diagnostics_update_in_insert = false,
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        text_align = "left",
        separator = true
      }
    },
    color_icons = true,
    show_buffer_icons = true,
    show_buffer_close_icons = true,
    show_close_icon = true,
    show_tab_indicators = true,
    show_duplicate_prefix = true,
    persist_buffer_sort = true,
    separator_style = "slant", -- | "slope" | "thick" | "thin" | { 'any', 'any' },
    enforce_regular_tabs = false,
    always_show_bufferline = true,
    hover = {
      enabled = true,
      delay = 200,
      reveal = {'close'}
    },
    sort_by = 'insert_after_current'
  },
  highlights = {
    -- Active buffer (focused)
    buffer_selected = {
      fg = '#ffffff',
      bg = '#282c34',
      bold = true,
      underline = true,
      sp = '#61afef', -- underline color
    },
    -- Inactive buffers
    buffer_visible = {
      fg = '#abb2bf',
      bg = '#353b45',
      underline = false,
    },
    buffer = {
      fg = '#5c6370',
      bg = '#21252b',
      underline = false,
    },
    -- Close button styling
    close_button_selected = {
      fg = '#e06c75',
      bg = '#282c34',
      underline = true,
      sp = '#61afef',
    },
    close_button_visible = {
      fg = '#abb2bf',
      bg = '#353b45',
    },
    close_button = {
      fg = '#5c6370',
      bg = '#21252b',
    },
    -- Modified indicator
    modified_selected = {
      fg = '#e5c07b',
      bg = '#282c34',
      underline = true,
      sp = '#61afef',
    },
    modified_visible = {
      fg = '#e5c07b',
      bg = '#353b45',
    },
    modified = {
      fg = '#e5c07b',
      bg = '#21252b',
    },
    -- Separator styling
    separator_selected = {
      fg = '#61afef',
      bg = '#282c34',
      underline = true,
      sp = '#61afef',
    },
    separator_visible = {
      fg = '#353b45',
      bg = '#353b45',
    },
    separator = {
      fg = '#21252b',
      bg = '#21252b',
    },
    -- Tab styling
    tab_selected = {
      fg = '#ffffff',
      bg = '#282c34',
      underline = true,
      sp = '#61afef',
    },
    tab = {
      fg = '#5c6370',
      bg = '#21252b',
    },
    -- Duplicate buffer names
    duplicate_selected = {
      fg = '#ffffff',
      bg = '#282c34',
      underline = true,
      sp = '#61afef',
    },
    duplicate_visible = {
      fg = '#abb2bf',
      bg = '#353b45',
    },
    duplicate = {
      fg = '#5c6370',
      bg = '#21252b',
    },
  } 
    }
        -- ✅ Move keymaps here
    local keymap = vim.keymap

    -- Navigate between buffers
    keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>', { desc = 'Next buffer' })
    keymap.set('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', { desc = 'Previous buffer' })

    -- Move buffers
    keymap.set('n', '<leader>bn', ':BufferLineMoveNext<CR>', { desc = 'Move buffer next' })
    keymap.set('n', '<leader>bp', ':BufferLineMovePrev<CR>', { desc = 'Move buffer previous' })

    -- Close buffers
    keymap.set('n', '<leader>bd', ':bdelete<CR>', { desc = 'Delete buffer' })
    keymap.set('n', '<leader>bD', ':bdelete!<CR>', { desc = 'Force delete buffer' })

    -- Go to buffer by number
    keymap.set('n', '<leader>1', ':BufferLineGoToBuffer 1<CR>', { desc = 'Go to buffer 1' })
    keymap.set('n', '<leader>2', ':BufferLineGoToBuffer 2<CR>', { desc = 'Go to buffer 2' })
    keymap.set('n', '<leader>3', ':BufferLineGoToBuffer 3<CR>', { desc = 'Go to buffer 3' })
    keymap.set('n', '<leader>4', ':BufferLineGoToBuffer 4<CR>', { desc = 'Go to buffer 4' })
    keymap.set('n', '<leader>5', ':BufferLineGoToBuffer 5<CR>', { desc = 'Go to buffer 5' })

    -- Pick buffer
    keymap.set('n', '<leader>bp', ':BufferLinePick<CR>', { desc = 'Pick buffer' })

    -- Close all buffers except current
    keymap.set('n', '<leader>bco', ':BufferLineCloseOthers<CR>', { desc = 'Close other buffers' })

    -- Close buffers to the right/left
    keymap.set('n', '<leader>bcr', ':BufferLineCloseRight<CR>', { desc = 'Close buffers to right' })
    keymap.set('n', '<leader>bcl', ':BufferLineCloseLeft<CR>', { desc = 'Close buffers to left' })
  end
} --]]
