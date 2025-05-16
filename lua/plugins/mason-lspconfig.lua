return {
    {
        "mason-org/mason.nvim",
        "mason-org/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
        config = function()
            require("mason").setup()

            require("mason-lspconfig").setup({
                automatic_enable = true,
                ensure_installed = {
                    "asm_lsp",
                    "clangd",
                    "csharp_ls",
                    "css_variables",
                    "harper_ls",
                    "glslls",
                    "slangd",
                    "html",
                    "eslint",
                    "java_language_server",
                    "jsonls",
                    "lua_ls",
                    "markdown_oxide",
                    "ruff_lsp",
                    "spectral"
                },
            })
        end,
    }
}

