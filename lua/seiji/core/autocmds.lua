-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.hl.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

-- Set indent rules by filetype (only use when lsp/formatter doesn't do this automatically)
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'cs',
  callback = function()
    vim.opt_local.tabstop = 4 -- number of visual spaces per TAB
    vim.opt_local.shiftwidth = 4 -- spaces for each indent level
    vim.opt_local.expandtab = true -- use spaces instead of tabs
  end,
})
