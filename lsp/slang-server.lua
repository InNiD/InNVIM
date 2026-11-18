return {
  cmd = { 'slang-server' },
  filetypes = { 'systemverilog', 'verilog' },
  root_markers = vim.fn.has('nvim-0.11.3') == 1 and { { '.git', '.slang' } } or { '.git', '.slang' },
}

