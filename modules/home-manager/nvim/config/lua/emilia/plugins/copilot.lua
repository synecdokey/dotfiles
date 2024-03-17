return {
  'zbirenbaum/copilot.lua',
  event = 'InsertEnter',
  opts = {
    panel = { enabled = false },
    suggestion = {
      auto_trigger = true,
      keymap = {
        -- Handled by cmp
        accept = false,
        accept_word = '<m-w>',
        accept_line = '<m-l>',
        next = '<m-n>',
        prev = '<m-p>',
        dismiss = '<m-d>',
      },
    },
    filetypes = {
      -- Somehow this is disabled by default
      markdown = true,
    },
  },
}
