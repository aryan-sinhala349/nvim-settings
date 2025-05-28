return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "master",
        lazy = false,
        build = ":TSUpdate",
        ensure_installed = {
            "asm",
            "c",
            "cmake",
            "comment",
            "cpp",
            "hlsl",
            "lua",
            "markdown",
            "python",
        },
    },
}

