return {
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  opts = {
    formatters_by_ft = {
      javascript = { 'prettier' },
      javascriptreact = { 'prettier' },
      lua = { 'stylua' },
      typescript = { 'prettier' },
      typescriptreact = { 'prettier' },
    },
    format_on_save = { timeout_ms = 500 },
  },
}
