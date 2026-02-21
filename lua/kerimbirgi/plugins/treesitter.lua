return {
    {
        'nvim-treesitter/nvim-treesitter',
        dependencies = {
            "nvim-treesitter/nvim-treesitter-textobjects",
        },
        lazy = false,
        build = ':TSUpdate',
        opts = {
            highlight = {
                enable = true,          -- enable Treesitter-based syntax highlighting
            },
            indent = {
                enable = true,          -- enable treesitter-based indentation
            },
            ensure_installed = { "lua", "python", "cpp", "bash", "javascript", "typescript" },  -- parsers you want
            sync_install = false,       -- Install parsers synchronously (only applied to `ensure_installed`)
            auto_install = true,        -- automatically install missing parsers
        },
    }
}
