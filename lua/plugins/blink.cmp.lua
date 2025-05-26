return {
    {
        "saghen/blink.cmp",
        -- optional: provides snippets for the snippet source
        dependencies = { "rafamadriz/friendly-snippets" },

        -- use a release tag to download pre-built binaries
        version = "1.*",
        -- AND/OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
        -- build = "cargo build --release"
        -- If you use nix, you can build from source using latest nightly rust with:
        -- build = "nix run .#build-plugin",
        opts = {
            enabled = function() return not vim.tbl_contains({ "TelescopePrompt", nil }, vim.bo.filetype) end
        },
        opts_extended = { "sources.default" }
    },
    {
        "neovim/nvim-lspconfig",
        dependencies = { "saghen/blink.cmp" },

        -- example using `opts` for defining servers
        opts = {
            servers = {
                asm_lsp = {},
                clangd = {},
                cmake = {},
                slangd = {},
                lua_ls = {},
            },
        },
        config = function(_, opts)
            local lspconfig = require("lspconfig")
            for server, config in pairs(opts.servers) do
                -- passing config.capabilities to blink.cmp merges with the capabilities in your
                -- `opts[server].capabilities`, if you've defined it
                config.capabilities = require("blink.cmp").get_lsp_capabilities(config.capabilities)
                lspconfig[server].setup(config)
            end
        end,
    },
}

