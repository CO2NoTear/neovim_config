require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})
require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls", "rust_analyzer", "clangd", "pylsp", "pylsp"},
}

local capabilities = require('cmp_nvim_lsp').default_capabilities()
    require('lspconfig').thriftls.setup {
      capabilities = capabilities
}
