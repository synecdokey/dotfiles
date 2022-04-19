vim.o.completeopt = 'menu,menuone,noselect'

local cmp = require('cmp')
local luasnip = require('luasnip')
local lspkind = require('lspkind')
local icons = require('nvim-nonicons')

local has_words_before = function()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0
    and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]
        :sub(col, col)
        :match('%s')
      == nil
end

cmp.setup({
  formatting = {
    format = lspkind.cmp_format({
      symbol_map = {
        Text = icons.get('typography'),
        Method = 'ƒ',
        Function = '',
        Constructor = '',
        Variable = icons.get('variable'),
        Class = icons.get('class'),
        Interface = icons.get('interface'),
        Module = '{}',
        Property = icons.get('tools'),
        Unit = icons.get('note'),
        Value = icons.get('note'),
        Enum = icons.get('list-unordered'),
        Keyword = icons.get('list-unordered'),
        Snippet = icons.get('snippet'),
        Color = icons.get('heart'),
        File = icons.get('file'),
        Folder = icons.get('file-directory-outline'),
        EnumMember = icons.get('list-unordered'),
        Constant = icons.get('constant'),
        Struct = icons.get('struct'),
        TypeParameter = icons.get('type'),
        Field = icons.get('field'),
        Reference = icons.get('file-symlink-file'),
        Event = icons.get('zap'),
      },
    }),
  },
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = {
    ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      elseif has_words_before() then
        cmp.complete()
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
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  }, {
    { name = 'buffer' },
  }),
})

cmp.setup.cmdline('/', {
  sources = cmp.config.sources({
    { name = 'buffer' },
  }),
})

cmp.setup.cmdline(':', {
  sources = cmp.config.sources({
    { name = 'path' },
  }, {
    { name = 'cmdline' },
  }),
})

-- Configure some LSP servers
local lspconf = require('lspconfig')

-- Use an on_attach function to restrict lsp mapping to lsp-enabled languages
local on_attach = function(client, bufnr)
  if client.name == 'tsserver' then
    client.resolved_capabilities.document_formatting = false
  end

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
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_actions, opts)
end

-- Wire completion to the LSP
local caps = require('cmp_nvim_lsp').update_capabilities(
  vim.lsp.protocol.make_client_capabilities()
)

local servers = { 'cssls', 'tsserver', 'tailwindcss' }

for _, lsp in ipairs(servers) do
  lspconf[lsp].setup({
    on_attach = on_attach,
    init_options = {
      hostInfo = 'neovim',
      npmLocation = '/opt/homebrew/bin/npm',
    },
    capabilities = caps,
    flags = {
      debounce_text_changes = 150,
    },
  })
end

vim.api.nvim_set_keymap('i', '<C-E>', '<Plug>luasnip-next-choice', {})
vim.api.nvim_set_keymap('s', '<C-E>', '<Plug>luasnip-next-choice', {})
