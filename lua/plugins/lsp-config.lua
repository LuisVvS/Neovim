return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "pyright",
                    "jdtls",
                    "gopls",
                    "omnisharp",
                },
            })
        end,
    },
    {
        "jay-babu/mason-nvim-dap.nvim",
        config = function()
            -- ensure the java debug adapter is installed
            require("mason-nvim-dap").setup({
                ensure_installed = { "java-debug-adapter", "java-test" },
            })
        end,
    },
    {
       "mfussenegger/nvim-jdtls",
        dependencies = {
            "mfussenegger/nvim-dap",
        },
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({
                capabilities = capabilities,
            })
            lspconfig.pyright.setup({
                capabilities = capabilities,
            })
            lspconfig.gopls.setup({
                capabilities = capabilities,
            })

            lspconfig.omnisharp.setup({
                capabilities = capabilities,
                on_attach = function(client)
                    -- Disable semantic tokens if needed
                    client.server_capabilities.semanticTokensProvider = nil
                end,
                cmd = { "omnisharp", "--languageserver", "--hostPID", tostring(vim.fn.getpid()) },
            })

            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
            vim.keymap.set({ "n" }, "<leader>ca", vim.lsp.buf.code_action, {})
        end,
    },
}
