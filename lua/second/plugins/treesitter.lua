return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    branch = "main",
    --[[
    config = function()
        require('nvim-treesitter.configs').setup({
            ensure_installed = {"lua", "python", "go", "rust"},
            sync_install = false,
            auto_install = true,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false
            }
        })
    end,
    ]]--
}
