return {
  'saghen/blink.cmp',
  dependencies = {
    'giuxtaposition/blink-cmp-copilot',
    'rafamadriz/friendly-snippets',
  },

  version = '*',
  opts = {
    keymap = { preset = 'default' },

    appearance = {
      use_nvim_cmp_as_default = true,
      nerd_font_variant = 'mono',
      kind_icons = {
        Copilot = ' ',
      },
    },
    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer', 'copilot' },
      providers = {
        copilot = {
          name = 'copilot',
          module = 'blink-cmp-copilot',
          score_offset = 100,
          async = true,
        },
      },
    },
  },
  opts_extend = { 'sources.default' },
}
