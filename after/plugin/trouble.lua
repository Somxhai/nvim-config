vim.keymap.set("n", "<leader>xq", function() require("trouble").toggle("quickfix") end,
    { silent = true, noremap = true }
)
