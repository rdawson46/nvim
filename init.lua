require("second.lazy")
require('first.remap')
require('first.set')

local opam_share = vim.fn.system("opam var share 2>/dev/null"):gsub("%s+$", "")
if opam_share ~= "" then
    vim.opt.runtimepath:prepend(opam_share .. "/ocp-indent/vim")
end

local autocmd = vim.api.nvim_create_autocmd
local yank_group = vim.api.nvim_create_augroup('HighlightYank', {})

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function ()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})
