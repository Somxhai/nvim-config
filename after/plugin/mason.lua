local mason = require("mason")

mason.setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

local noop = function() end

require('mason-lspconfig').setup({
    ensure_installed = { 'lua_ls', 'rust_analyzer', 'svelte' },
    automatic_installation = true,
    handlers = {
        function(server_name)
            require('lspconfig')[server_name].setup({})
        end,
        rust_analyzer = noop,
    },
})

vim.g.rustaceanvim = {
    server = {
        capabilities = require('cmp_nvim_lsp').default_capabilities(),
    },
}
