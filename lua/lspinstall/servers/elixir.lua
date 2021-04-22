local config = require'lspconfig'.elixirls.document_config
require'lspconfig/configs'.elixirls = nil -- important, immediately unset the loaded config again
config.default_config.cmd = { "./elixir-ls/language_server.sh" }

return vim.tbl_extend('error', config, {
  install_script = [[
    rm -rf elixir-ls
    curl -fLO https://github.com/elixir-lsp/elixir-ls/releases/latest/download/elixir-ls.zip
    unzip elixir-ls.zip -d elixir-ls
    chmod +x elixir-ls/language_server.sh
    rm elixir-ls.zip
  ]],
})
