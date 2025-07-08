--///     I. Appearance & Display      ///

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})



-- Line Numbers:
vim.wo.number = true -- Make line numbers default (default: false)
vim.o.relativenumber = true -- Set relative numbered lines (default: false)
vim.o.numberwidth = 4 -- Set number column width (default: 4)

-- Text Wrapping & Indentation Display:
vim.o.wrap = false -- Display lines as one long line (default: true)
vim.o.linebreak = true -- Companion to wrap, don't split words (default: false)
vim.o.breakindent = true -- Enable break indent (default: false)

-- Visual Cues:
vim.o.cursorline = false -- Highlight the current line (default: false)
vim.o.hlsearch = false -- Set highlight on search (default: true)
vim.o.showmode = false -- We don't need to see things like -- INSERT -- anymore (default: true)
vim.o.showtabline = 2 -- Always show tabs (default: 1)
vim.wo.signcolumn = 'yes' -- Keep signcolumn on by default (default: 'auto')
vim.o.conceallevel = 0 -- So that `` is visible in markdown files (default: 1)

-- Colors & UI:

vim.o.guifont = "CascaydiaCove Nerd Font"
vim.g.neovide_scale_factor = 1.0
vim.g.neovide_line_height = 1.2
vim.opt.termguicolors = true -- Set termguicolors to enable highlight groups (default: false)
vim.o.cmdheight = 1 -- More space in the Neovim command line for displaying messages (default: 1)
vim.o.pumheight = 10 -- Pop up menu height (default: 0)







--///       II. Editing Behavior        ///


-- Indentation:
vim.o.autoindent = true -- Copy indent from current line when starting new one (default: true)
vim.o.smartindent = true -- Make indenting smarter again (default: false)
vim.o.shiftwidth = 4 -- The number of spaces inserted for each indentation (default: 8)
vim.o.tabstop = 4 -- Insert n spaces for a tab (default: 8)
vim.o.softtabstop = 4 -- Number of spaces that a tab counts for while performing editing operations (default: 0)
vim.o.expandtab = true -- Convert tabs to spaces (default: false)

-- Navigation & Scrolling:
vim.o.mouse = 'a' -- Enable mouse mode (default: '')
vim.o.scrolloff = 4 -- Minimal number of screen lines to keep above and below the cursor (default: 0)
vim.o.sidescrolloff = 8 -- Minimal number of screen columns either side of cursor if wrap is false (default: 0)
vim.o.whichwrap = 'bs<>[]hl' -- Which "horizontal" keys are allowed to travel to prev/next line (default: 'b,s')

-- Clipboard:
vim.o.clipboard = 'unnamedplus' -- Sync clipboard between OS and Neovim. (default: '')

-- Searching:
vim.o.ignorecase = true -- Case-insensitive searching UNLESS \C or capital in search (default: false)
vim.o.smartcase = true -- Smart case (default: false)
vim.opt.iskeyword:append '-' -- Hyphenated words recognized by searches (default: does not include '-')

-- Splits:
vim.o.splitbelow = true -- Force all horizontal splits to go below current window (default: false)
vim.o.splitright = true -- Force all vertical splits to go to the right of current window (default: false)

-- Completion:
vim.o.completeopt = 'menuone,noselect' -- Set completeopt to have a better completion experience (default: 'menu,preview')
vim.opt.shortmess:append 'c' -- Don't give |ins-completion-menu| messages (default: does not include 'c')

-- Miscellaneous Editing:
vim.o.backspace = 'indent,eol,start' -- Allow backspace on (default: 'indent,eol,start')
vim.opt.formatoptions:remove { 'c', 'r', 'o' } -- Don't insert the current comment leader automatically for auto-wrapping comments using 'textwidth', hitting <Enter> in insert mode, or hitting 'o' or 'O' in normal mode. (default: 'croql')










--///       III. File & System      ///


--File Handling:
vim.o.fileencoding = 'utf-8' -- The encoding written to a file (default: 'utf-8')
vim.o.swapfile = false -- Creates a swapfile (default: true)
vim.o.backup = false -- Creates a backup file (default: false)
vim.o.writebackup = false -- If a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited (default: true)
vim.o.undofile = true -- Save undo history (default: false)

-- Performance & Timings:
vim.o.updatetime = 250 -- Decrease update time (default: 4000)
vim.o.timeoutlen = 300 -- Time to wait for a mapped sequence to complete (in milliseconds) (default: 1000)


vim.o.mousemoveevent = true
