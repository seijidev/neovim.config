return {
  {
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot',
    --build = ':Copilot auth',
    event = 'InsertEnter',
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = true,
        keymap = {
          accept = '<CR>',
        },
      },
      panel = { enabled = false },
      filetypes = {
        markdown = true,
        help = true,
      },
    },
    keys = {
      {
        '<leader>cd',
        function()
          vim.cmd 'Copilot disable'
        end,
        mode = 'n',
        desc = 'Disable Copilot',
      },
      {
        '<leader>ce',
        function()
          vim.cmd 'Copilot enable'
        end,
        mode = 'n',
        desc = 'Enable Copilot',
      },
    },
  },
}
