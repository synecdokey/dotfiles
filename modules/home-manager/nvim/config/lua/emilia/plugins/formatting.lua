return {
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  opts = {
    formatters_by_ft = {
      lua = { 'stylua' },
      nix = { 'alejandra' },
    },
    format_on_save = { timeout_ms = 500 },
  },
}
