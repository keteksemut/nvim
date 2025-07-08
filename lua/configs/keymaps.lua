--///       V. Keybindings & Mappings       ///--

-- Leader Keys:
vim.g.mapleader = ' ' -- Set global leader key to space
vim.g.maplocalleader = ' ' -- Set local leader key to space
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true }) -- Disable the spacebar key's default behavior in Normal and Visual modes

--File Operations:
vim.keymap.set('n', '<C-s>', '<cmd> w <CR>', opts) -- Save file
vim.keymap.set('n', '<leader>sn', '<cmd>noautocmd w <CR>', opts) -- Save file without auto-formatting
vim.keymap.set('n', '<C-q>', '<cmd> q <CR>', opts) -- Quit file

-- Editing & Navigation:
vim.keymap.set('n', 'x', '"_x', opts) -- Delete single character without copying into register
vim.keymap.set('n', '<C-d>', '<C-d>zz', opts) -- Vertical scroll down and center
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts) -- Vertical scroll up and center
vim.keymap.set('n', 'n', 'nzzzv', opts) -- Find next and center view
vim.keymap.set('n', 'N', 'Nzzzv', opts) -- Find previous and center view
vim.keymap.set('v', '<', '<gv', opts) -- Stay in indent mode (dedent)
vim.keymap.set('v', '>', '>gv', opts) -- Stay in indent mode (indent)
vim.keymap.set('v', 'p', '"_dP', opts) -- Keep last yanked when pasting (replace selection without yanking it)

-- Window Management:
vim.keymap.set('n', '<Up>', ':resize -2<CR>', opts) -- Resize window up
vim.keymap.set('n', '<Down>', ':resize +2<CR>', opts) -- Resize window down
vim.keymap.set('n', '<Left>', ':vertical resize -2<CR>', opts) -- Resize window left
vim.keymap.set('n', '<Right>', ':vertical resize +2<CR>', opts) -- Resize window right
vim.keymap.set('n', '<leader>v', '<C-w>v', opts) -- Split window vertically
vim.keymap.set('n', '<leader>h', '<C-w>s', opts) -- Split window horizontally
vim.keymap.set('n', '<leader>se', '<C-w>=', opts) -- Make split windows equal width & height
vim.keymap.set('n', '<leader>xs', ':close<CR>', opts) -- Close current split window
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>', opts) -- Navigate to split above
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>', opts) -- Navigate to split below
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', opts) -- Navigate to split left
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', opts) -- Navigate to split right

-- Buffer Management:
vim.keymap.set('n', '<Tab>', ':bnext<CR>', opts) -- Go to next buffer
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', opts) -- Go to previous buffer
vim.keymap.set('n', '<leader>x', ':bdelete!<CR>', opts) -- Close buffer
vim.keymap.set('n', '<leader>b', '<cmd> enew <CR>', opts) -- New buffer

-- Tab Management:
vim.keymap.set('n', '<leader>to', ':tabnew<CR>', opts) -- Open new tab
vim.keymap.set('n', '<leader>tx', ':tabclose<CR>', opts) -- Close current tab
vim.keymap.set('n', '<leader>tn', ':tabn<CR>', opts) -- Go to next tab
vim.keymap.set('n', '<leader>tp', ':tabp<CR>', opts) -- Go to previous tab

-- Toggle Options:
vim.keymap.set('n', '<leader>lw', '<cmd>set wrap!<CR>', opts) -- Toggle line wrapping


--///       VI. Diagnostics     ///--


vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })
