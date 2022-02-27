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
    ['<C-x>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
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

  -- Mappings.
  local function buf_set_keymap(...)
    vim.api.nvim_buf_set_keymap(bufnr, ...)
  end
  local opts = { noremap = true, silent = true }
  buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  -- Diagnostics
  buf_set_keymap(
    'n',
    '<leader>dp',
    '<cmd>lua vim.diagnostic.goto_prev()<CR>',
    opts
  )
  buf_set_keymap(
    'n',
    '<leader>dn',
    '<cmd>lua vim.diagnostic.goto_next()<CR>',
    opts
  )
  buf_set_keymap('n', '<leader>dl', '<cmd>Telescope diagnostics<CR>', opts)
  -- Global renames
  buf_set_keymap('n', '<leader>r', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  -- Code actions
  buf_set_keymap(
    'n',
    '<leader>ca',
    '<cmd>lua vim.lsp.buf.code_actions()<CR>',
    opts
  )
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
