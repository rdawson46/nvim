return {
    "m4xshen/autoclose.nvim",

    config = function()
        require('autoclose').setup({
            options = {
                pair_spaces = true,
                disable_command_mode = true,
                disable_filetypes = { "markdown" }
            }
        })
    end
}
