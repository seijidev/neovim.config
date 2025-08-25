return { -- You can easily change to a different colorscheme.
  -- Change the name of the colorscheme plugin below, and then
  -- change the command in the config to whatever the name of that colorscheme is.
  --
  {
    'gambhirsharma/vesper.nvim',
    enabled = false,
    lazy = false,
    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
      vim.cmd.colorscheme 'vesper'

      -- You can configure highlights by doing something like:
      vim.cmd.hi 'Comment gui=none'
    end,
  },

  {
    'rebelot/kanagawa.nvim',
    enabled = false,
    lazy = false,
    priority = 1000,
    opts = {},
    init = function()
      vim.cmd.colorscheme 'kanagawa-wave'
      vim.cmd.hi 'Comment gui=none'
    end,
  },

  {
    'sho-87/kanagawa-paper',
    enabled = false,
    lazy = false,
    priority = 1000,
    opts = {},
    init = function()
      vim.cmd.colorscheme 'kanagawa-paper'
      vim.cmd.hi 'Comment gui=none'
    end,
  },

  {
    'olivercederborg/poimandres.nvim',
    enabled = false,
    lazy = false,
    priority = 1000,
    config = function()
      require('poimandres').setup {
        -- leave this setup function empty for default config
        -- or refer to the configuration section
        -- for configuration options
      }
    end,
    -- optionally set the colorscheme within lazy config
    init = function()
      vim.cmd 'colorscheme poimandres'
    end,
  },
  {
    'eldritch-theme/eldritch.nvim',
    enabled = true,
    lazy = false,
    priority = 1000,
    opts = {},
    init = function()
      vim.cmd.colorscheme 'eldritch'
      vim.cmd.hi 'Comment gui=none'
    end,
  },
}
