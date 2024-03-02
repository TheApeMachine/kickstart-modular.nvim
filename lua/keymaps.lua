-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>w', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

vim.keymap.set('n', 's', '<Plug>(easymotion-overwin-f)', { desc = 'Jump the shark' })
vim.keymap.set('n', '<leader>z', ':Ex<cr>', { desc = 'Quit all' })
vim.keymap.set('n', 'jk', '<esc>', { desc = 'Just Kidding' })
vim.keymap.set('n', '<leader>,', ':vsplit<cr>', { desc = 'The most epic of splits' })
vim.keymap.set('n', '<leader>.', ':split<cr>', { desc = 'The most epic of splits' })
vim.keymap.set('n', '<leader>o', ':only<cr>', { desc = 'Only the lonely' })
vim.keymap.set('n', '<leader>q', ':q<cr>', { desc = 'Roll tide' })
vim.keymap.set('n', '<leader>l', ':Twilight<cr>', { desc = 'Twinkle twinkle, little star...' })
vim.keymap.set('n', '<c-j>', '<c-w>j', { desc = '' })
vim.keymap.set('n', '<c-k>', '<c-w>k', { desc = '' })
vim.keymap.set('n', '<c-h>', '<c-w>h', { desc = '' })
vim.keymap.set('n', '<c-l>', '<c-w>l', { desc = '' })

-- vim: ts=2 sts=2 sw=2 et
