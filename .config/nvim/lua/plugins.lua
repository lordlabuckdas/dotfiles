return require('packer').startup(function()
    use {
        'wbthomason/packer.nvim',
    }

    use {
        'Mofiqul/dracula.nvim',
    }

    use {
        'kyazdani42/nvim-web-devicons',
    }

    use {
        'nvim-lua/plenary.nvim',
    }

    use {
        'lewis6991/gitsigns.nvim',
        requires = {
            'nvim-lua/plenary.nvim'
        },
        config = function()
            require('gitsigns').setup()
        end,
    }

    use {
        'nvim-telescope/telescope.nvim',
        requires = {
            'nvim-lua/plenary.nvim'
        },
        config = function()
            require('telescope_conf')
        end,
    }

    -- use {
    --     'famiu/feline.nvim',
    --     requires = {
    --         'lewis6991/gitsigns.nvim',
    --         'kyazdani42/nvim-web-devicons',
    --     },
    --     config = function()
    --         require('statusline')
    --     end,
    -- }

    use {
        'hoob3rt/lualine.nvim',
        config = function()
            require('statusline')
        end,
    }

    use {
        'b3nj5m1n/kommentary',
        config = function()
            require('kommentary_conf')
        end,
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        branch = "0.5-compat",
        config = function()
            require('treesitter_conf')
        end,
    }

    use {
        'neovim/nvim-lspconfig',
        config = function()
            require('lsp_conf')
        end,
    }

    use {
        'hrsh7th/cmp-nvim-lsp',
    }

    use {
        'hrsh7th/cmp-buffer',
    }

    use {
        'hrsh7th/nvim-cmp',
        requires = {
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
        },
        config = function()
            require('cmp_conf')
        end,
    }

    use {
        'L3MON4D3/LuaSnip',
        requires = {
            'hrsh7th/nvim-cmp',
        },
    }

    use {
        'saadparwaiz1/cmp_luasnip',
        requires = {
            'L3MON4D3/LuaSnip',
            'hrsh7th/nvim-cmp',
        },
    }

    use {
        'akinsho/bufferline.nvim',
        requires = {
            'kyazdani42/nvim-web-devicons'
        },
        config = function()
            require('bufferline').setup{
                diagnostics = 'nvim_lsp',
            }
        end,
    }

    use {
        'lervag/vimtex',
        config = function()
            require('tex')
        end,
    }
end)
