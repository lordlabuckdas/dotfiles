require'nvim-treesitter.configs'.setup {
    ensure_installed = {
        "cpp",
        "go",
        "python",
        "rust",
        "typescript",
        "javascript",
    },
    highlight = {
        enable = true,
    },
}
