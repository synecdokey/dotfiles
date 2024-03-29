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
  config = function(_, opts)
    local cmp = require('cmp')
    local copilot = require('copilot.suggestion')
    local luasnip = require('luasnip')

    require('copilot').setup(opts)

    local function set_trigger(trigger)
      if not trigger and copilot.is_visible() then
        copilot.dismiss()
      end
      vim.b.copilot_suggestion_auto_trigger = trigger
      vim.b.copilot_suggestion_hidden = not trigger
    end

    cmp.event:on('menu_opened', function()
      set_trigger(false)
    end)
    cmp.event:on('menu_closed', function()
      set_trigger(not luasnip.expand_or_locally_jumpable())
    end)

    vim.api.nvim_create_autocmd('User', {
      desc = 'Disable Copilot inside snippets',
      pattern = { 'LuasnipInsertNodeEnter', 'LuasnipInsertNodeLeave' },
      callback = function()
        set_trigger(not luasnip.expand_or_locally_jumpable())
      end,
    })
  end,
}
