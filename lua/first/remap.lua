vim.g.mapleader = " "
vim.keymap.set("n", '<leader>pv', vim.cmd.Ex)
vim.keymap.set("n", '<leader>s', vim.cmd.w)
vim.keymap.set("n", '<leader><leader>', function()
	vim.cmd('so')
end)

vim.keymap.set("i", 'jj', '<Esc>')

vim.keymap.set("v", 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set("v", 'K', ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>wh", "<C-w>h")
vim.keymap.set("n", "<leader>wl", "<C-w>l")
vim.keymap.set("n", "<leader>wj", "<C-w>j")
vim.keymap.set("n", "<leader>wk", "<C-w>k")
vim.keymap.set("n", "<leader>wv", "<C-w>v")
vim.keymap.set("n", "<leader>ws", "<C-w>s")
