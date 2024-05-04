require('rose-pine').setup({
    dark_variant = 'moon',
    disable_background = true
})

function ColorMyPencils(color)
    color = color or 'rose-pine'

    vim.api.nvim_set_hl(0, "Normal", {bg= "none"})
    vim.api.nvim_set_hl(0, "NormalFloat", {bg= "none"})
    vim.cmd.colorscheme(color)
end

ColorMyPencils()
