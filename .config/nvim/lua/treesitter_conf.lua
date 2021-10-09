require'nvim-treesitter.configs'.setup {
    ensure_installed = {
        "cpp",
        "go",
        "python",
        "rust",
    },
    highlight = {
        enable = true,
    },
}
