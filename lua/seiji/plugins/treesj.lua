return {
  'Wansmer/treesj',
  keys = {
    { '<leader>jt', '<cmd>TSJToggle<cr>', desc = 'Toggle Node' },
    { '<leader>js', '<cmd>TSJSplit<cr>', desc = 'Split Node' },
    { '<leader>jj', '<cmd>TSJJoin<cr>', desc = 'Join Node' },
  },
  dependencies = { 'nvim-treesitter/nvim-treesitter' }, -- if you install parsers with `nvim-treesitter`
  opts = { use_default_keymaps = false, langs = zig },
}
