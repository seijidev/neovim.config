return {
  {
    'cbochs/grapple.nvim',
    dependencies = {
      { 'nvim-tree/nvim-web-devicons', lazy = true },
    },
    opts = {
      scope = 'git',
    },
    event = { 'BufReadPost', 'BufNewFile' },
    cmd = 'Grapple',
    keys = {
      { '<leader>m', '<cmd>Grapple toggle<cr>', desc = 'Grapple toggle tag' },
      { '<leader>M', '<cmd>Grapple toggle_tags<cr>', desc = 'Grapple open tags window' },
      --{ '<leader>N', '<cmd>Grapple cycle_tags next<cr>', desc = 'Grapple cycle next tag' },
      --{ '<leader>P', '<cmd>Grapple cycle_tags prev<cr>', desc = 'Grapple cycle previous tag' },

      { '<C-H>', '<cmd>Grapple select index=1<cr>', desc = 'Select first tag' },
      { '<C-T>', '<cmd>Grapple select index=2<cr>', desc = 'Select second tag' },
      { '<C-N>', '<cmd>Grapple select index=3<cr>', desc = 'Select third tag' },
      { '<C-S>', '<cmd>Grapple select index=4<cr>', desc = 'Select fourth tag' },
    },
  },
}
