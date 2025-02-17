local on_attach = function(client, bufnr)
  local opts = { buffer = bufnr }

  -- Mappings
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
  -- Diagnostics
  vim.keymap.set('n', '<leader>dp', vim.diagnostic.goto_prev, opts)
  vim.keymap.set('n', '<leader>dn', vim.diagnostic.goto_next, opts)
  vim.keymap.set('n', '<leader>dl', '<cmd>Telescope diagnostics<cr>', opts)
  -- Global renames
  vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, opts)
  -- Code actions
  -- vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_actions, opts)
end

return {
  {
    'neovim/nvim-lspconfig',
    event = { 'BufReadPre', 'BufNewFile' },
    config = function()
      local lspconf = require('lspconfig')
      local caps = require('blink.cmp').get_lsp_capabilities()

      lspconf.biome.setup({
        cmd = { 'pnpm', 'biome', 'lsp-proxy' },
        capabilities = caps,
      })

      local servers = { 'cssls', 'tailwindcss', 'gleam', 'astro', 'nil_ls' }
      for _, lsp in ipairs(servers) do
        lspconf[lsp].setup({
          on_attach = on_attach,
          capabilities = caps,
          flags = {
            debounce_text_changes = 150,
          },
        })
      end

      vim.keymap.set({ 'i', 's' }, '<c-e>', '<plug>luasnip-next-choice')
    end,
  },

  -- Completion
  {
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
          Copilot = ' ',
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
  },

  -- Better TS experience than typescript-language-server
  {
    'pmizio/typescript-tools.nvim',
    ft = { 'javascript', 'javascriptreact', 'typescript', 'typescriptreact' },
    dependencies = { 'plenary.nvim', 'nvim-lspconfig' },
    opts = {
      on_attach = on_attach,
      jsx_close_tag = {
        enable = true,
      },
    },
  },
}
