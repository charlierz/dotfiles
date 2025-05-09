return {
  'milanglacier/minuet-ai.nvim',
  config = function()
    require('minuet').setup {
      cmp = {
        enable_auto_complete = true,
      },
      -- virtualtext = {
      --   auto_trigger_ft = { '*' },
      --   keymap = {
      --     -- accept whole completion
      --     accept = '<Tab>',
      --     -- accept one line
      --     accept_line = '<A-a>',
      --     -- accept n lines (prompts for number)
      --     -- e.g. "A-z 2 CR" will accept 2 lines
      --     accept_n_lines = '<A-z>',
      --     -- Cycle to prev completion item, or manually invoke completion
      --     prev = '<A-p>',
      --     -- Cycle to next completion item, or manually invoke completion
      --     next = '<A-n>',
      --     dismiss = '<A-o>',
      --   },
      -- },
      provider = 'openai_fim_compatible',
      n_completions = 2,
      context_window = 16000,
      provider_options = {
        openai_fim_compatible = {
          name = 'AI',
          api_key = 'TERM',
          end_point = 'http://192.168.0.166:11434/v1/completions',
          model = 'qwen2.5-coder:3b-base-q4_K_M',
          optional = {
            max_tokens = 100,
            top_p = 0.9,
          },
        },
      },
    }
  end,
}
