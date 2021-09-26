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
            require('telescope_config')
        end,
    }

    use {
        'hoob3rt/lualine.nvim',
        config = function()
            require'statusline'
        end,
    }

    use {
        'b3nj5m1n/kommentary',
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        branch = "0.5-compat",
    }

    use {
        'neovim/nvim-lspconfig',
        config = function()
            require('lsp_config')
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
            require('cmp_config')
        end,
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
end)
