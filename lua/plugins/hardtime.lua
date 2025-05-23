return {
    {
        "rcarriga/nvim-notify",
        opts = {
            backgroundcolour = "#000000",
        },
        config = function(opts)
            local notify = require("notify")
            vim.notify = notify
            notify.setup(opts)
        end
    },
    {
        "m4xshen/hardtime.nvim",
        lazy = false,
        dependencies = { "MunifTanjim/nui.nvim", },
        opts = {
            disabled_keys = {
                ["<Up>"] = { "n", "x" },
                ["<Down>"] = { "n", "x" },
                ["<Left>"] = { "n", "x" },
                ["<Right>"] = { "n", "x" },
            },
        },
    },
}

