return require('packer').startup({function()
    -- meta lol
    use 'wbthomason/packer.nvim'

    -- GOATed
    use {
      'Mofiqul/dracula.nvim',
      config = function()
        require("dracula").setup({
          show_end_of_buffer = true,
          transparent_bg = true,
        })
        -- require("dracula").load()
      end,
    }

    -- good looking icons
    use 'kyazdani42/nvim-web-devicons'

    -- aux
    use 'nvim-lua/plenary.nvim'

    -- git
    use {
        'lewis6991/gitsigns.nvim',
        requires = 'nvim-lua/plenary.nvim',
        config = function()
            require('gitsigns').setup()
        end,
    }

    -- faster searching
    use {
        'nvim-telescope/telescope-fzf-native.nvim',
        run = 'make',
    }

    -- searching & fm
    use {
        'nvim-telescope/telescope.nvim',
        requires = {
            'nvim-lua/plenary.nvim',
            'nvim-telescope/telescope-fzf-native.nvim',
        },
        config = function()
            require('telescope_conf')
        end,
    }

    -- file tree
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
        config = function()
            require("nvim_tree_conf")
        end,
    }

    -- should configure this some day
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

    -- statusline
    use {
        'hoob3rt/lualine.nvim',
        config = function()
            require('statusline')
        end,
    }

    -- easier comments
    use {
        'b3nj5m1n/kommentary',
        config = function()
            require('kommentary_conf')
        end,
    }

    -- syntax highlighting
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = function()
            require('treesitter_conf')
        end,
    }

    -- native lsp
    use {
        'neovim/nvim-lspconfig',
        config = function()
            require('lsp_conf')
        end,
    }

    -- completions aux
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'

    -- completions
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

    -- autocomplete pairs, needed to use snippets and suggestions
    use {
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup{}
        end,
    }

    -- snippet engine
    use {
        'L3MON4D3/LuaSnip',
        requires = 'hrsh7th/nvim-cmp',
    }

    -- cmp + luasnip
    use {
        'saadparwaiz1/cmp_luasnip',
        requires = {
            'L3MON4D3/LuaSnip',
            'hrsh7th/nvim-cmp',
        },
    }

    -- good looking windows
    use {
        'akinsho/bufferline.nvim',
        requires = 'kyazdani42/nvim-web-devicons',
        config = function()
            require('bufferline').setup {
                options = {
                    diagnostics = "nvim_lsp",
                }
            }
        end,
    }

    -- GOATed latex plugin
    -- use {
    --     'lervag/vimtex',
    --     ft = 'tex',
    --     config = function()
    --         require('tex')
    --     end,
    -- }

    -- markdown
    use {
        'godlygeek/tabular',
        ft = 'markdown',
    }

    use {
        'preservim/vim-markdown',
        requires = 'godlygeek/tabular',
        ft = 'markdown',
        config = function()
            require('md')
        end,
    }
end,
config = {
    display = {
        open_fn = function()
            return require('packer.util').float({ border = 'single' })
        end,
        prompt_border = 'single',
    }
}})
