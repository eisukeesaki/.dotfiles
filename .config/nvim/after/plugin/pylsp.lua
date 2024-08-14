local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

require'lspconfig'.pylsp.setup{
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          ignore = {'E3', 'E5', 'W292', 'W293', 'W3'}, -- https://pep8.readthedocs.io/en/latest/intro.html#error-codes
          maxLineLength = 100
        }
      }
    }
  }
}

lsp.setup()
