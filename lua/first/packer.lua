vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.3',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    })

    use('nvim-treesitter/nvim-treesitter', {run = ":TSUpdate"})
    use('nvim-treesitter/playground')
    use{
        'theprimeagen/harpoon',
        branch = 'harpoon2',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            {'neovim/nvim-lspconfig'},
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        }
    }

    use{
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'neovim/nvim-lspconfig',
    }

    use 'm4xshen/autoclose.nvim'

    use {
        'abecodes/tabout.nvim',
        config = function()
            require('tabout').setup({
                tabkey = '<Tab>',
                backwards_tabkey = '<S-Tab>',
                act_as_tab = true,
                act_as_shift = false,
                default_tab = '<C-t>',
                enable_backwards = true,
                completion = true,
                tabouts = {
                    {open= "'", close="'"},
                    {open= '"', close='"'},
                    {open= '`', close='`'},
                    {open= '(', close=')'},
                    {open= '[', close=']'},
                    {open= '{', close='}'},
                    {open= '<', close='>'},
                },
                ignore_beginning = false,
                exclude = {}
            })
        end,
        wants = {'nvim-treesitter'},
        after = {'nvim-cmp'}
    }

    use 'folke/todo-comments.nvim'

    use 'lewis6991/gitsigns.nvim'

    use 'gorbit99/codewindow.nvim'

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use 'chentoast/marks.nvim'

    use {
        'ggandor/flit.nvim',
        requires = {
            {'ggandor/leap.nvim'},
            {'tpope/vim-repeat'}
        }
    }

    use 'tpope/vim-fugitive'

    use "stevearc/dressing.nvim"
    use "ziontee113/icon-picker.nvim"
end)
