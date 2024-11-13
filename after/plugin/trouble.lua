local trouble = require("trouble")
vim.keymap.set("n", "<leader>xq", function() trouble.toggle("quickfix") end,
    { silent = true, noremap = true }
)
