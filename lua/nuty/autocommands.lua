vim.cmd [[
  Autoformat
  augroup _lsp
    autocmd!
    autocmd BufWritePre * lua vim.lsp.buf.formatting()
  augroup end
]]
