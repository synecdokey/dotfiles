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
      local caps = require('cmp_nvim_lsp').default_capabilities()

      local servers = { 'cssls', 'tailwindcss', 'gleam', 'astro', 'nil_ls' }

      lspconf.biome.setup({
        cmd = { 'pnpm', 'biome', 'lsp-proxy' },
        capabilities = caps,
        single_file_support = true,
      })

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
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    dependencies = {
      'nvim-lspconfig',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      { 'l3mon4d3/luasnip', event = 'InsertEnter' },
      'saadparwaiz1/cmp_luasnip',
    },
    opts = function()
      vim.o.completeopt = 'menuone,noselect,noinsert'
      local luasnip = require('luasnip')
      local cmp = require('cmp')

      return {
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ['<C-d>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-s>'] = cmp.mapping.complete(),
          ['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
          }),
          ['<Tab>'] = cmp.mapping(function(fallback)
            local copilot = require('copilot.suggestion')

            if copilot.is_visible() then
              copilot.accept()
            elseif cmp.visible() then
              cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
              luasnip.expand_or_jump()
            else
              fallback()
            end
          end, { 'i', 's' }),
          ['<S-Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
              luasnip.jump(-1)
            else
              fallback()
            end
          end, { 'i', 's' }),
        }),
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          { name = 'luasnip' },
        }, { { name = 'buffer' } }),
      }
    end,
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
