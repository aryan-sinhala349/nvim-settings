return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            local configs = require("nvim-treesitter.configs")

            configs.setup({
                ensure_installed = {
                    "asm",
                    "c",
                    "c_sharp",
                    "cmake",
                    "cpp",
                    "css",
                    "csv",
                    "git_config",
                    "git_rebase",
                    "gitattributes",
                    "gitcommit",
                    "gitignore",
                    "glsl",
                    "hlsl",
                    "html",
                    "java",
                    "javascript",
                    "json",
                    "lua",
                    "make",
                    "markdown",
                    "markdown_inline",
                    "nasm",
                    "python",
                    "rust",
                    "sql",
                    "yaml"
                },
                sync_install = false,
                highlight = { enable= true },
                indent = { enable = true },
            })
        end
    }
}

