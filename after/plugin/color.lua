local tokyonight = require("tokyonight")

tokyonight.setup({
    style = "night"
})

require('nvim-highlight-colors').setup {
    render = "background",
    enable_tailwind = true,
}
function ColorMyPencils(color)
    color = color or "tokyonight"
    vim.cmd.colorscheme(color)

    -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()
