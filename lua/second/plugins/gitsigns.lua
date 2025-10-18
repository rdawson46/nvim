return {
    "lewis6991/gitsigns.nvim",
    config = function()
        require('gitsigns').setup({
            on_attach = function (bufnr)
                local gitsigns = require('gitsigns')

                vim.keymap.set('n', '<leader>lp', gitsigns.preview_hunk_inline)
            end
        })
    end
}
