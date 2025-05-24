vim.cmd.set("nu")
vim.cmd.set("softtabstop=4")
vim.cmd.set("expandtab")
vim.cmd.set("smarttab")
vim.cmd.set("shiftwidth=4")

vim.keymap.set('n', 'm', function() vim.cmd.set("rnu!") end, {})

require("config.lazy")

vim.cmd("Neotree<CR>")

