return {
  { -- statusline
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup {
        options = {
          icons_enabled = false,
          component_separators = { left = '', right = '' },
          section_separators = { left = '', right = '' },
        },
        sections = {
          lualine_b = {},
          lualine_c = {
            { 'branch', padding = { left = 2, right = 1 } },
            'diagnostics',
            {
              'filename',
              path = 1, -- 0: Just the filename
              -- 1: Relative path
              -- 2: Absolute path
              -- 3: Absolute path, with tilde as the home directory
              -- 4: Filename and parent dir, with tilde as the home directory
            },
          },
          lualine_x = { 'diff', 'filetype' },
          lualine_y = {},
        },
      }
    end,
  },

  { -- bufferline
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      vim.opt.termguicolors = true
      require('bufferline').setup {
        options = {
          show_buffer_icons = false,
          show_buffer_close_icons = false,
          indicator = {
            style = 'none',
          },
          separator_style = { '', '' },
          diagnostics = 'nvim_lsp',
        },
      }
    end,
  },

  { -- indent line
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    ---@module "ibl"
    ---@type ibl.config
    opts = {},
    config = function()
      require('ibl').setup {
        indent = {
          char = '▏',
        },
        scope = {
          show_start = false,
          show_end = false,
        },
      }
    end,
  },
}
