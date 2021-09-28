local config = require"lspinstall/util".extract_config("bicep")
config.default_config.cmd = { "dotnet", "./bicep-langserver/Bicep.LangServer.dll" }

return vim.tbl_extend('error', config, {
  install_script = [[
  curl -fLO https://github.com/Azure/bicep/releases/latest/download/bicep-langserver.zip
  rm -rf bicep-langserver
  unzip bicep-langserver.zip -d bicep-langserver
  rm bicep-langserver.zip
  ]]
})
