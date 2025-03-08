return {
  { --Tokyo Night theme
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
      require('tokyonight').setup {
        style = 'night',
        transparent = true,
        on_colors = function() end,
        on_highlights = function(hl, c)
          hl.FloatBorder = {
            fg = '#ffffff',
          }
          hl.TelescopeNormal = {
            fg = c.fg_dark,
          }
          hl.TelescopeBorder = {
            fg = '#ffffff',
          }
          hl.TelescopePromptBorder = {
            fg = '#ff9e64',
          }
          hl.TelescopePromptTitle = {
            fg = '#ff9e64',
          }
        end,
      }
    end,
    init = function()
      vim.cmd.colorscheme 'tokyonight-night'
    end,
  },
}
