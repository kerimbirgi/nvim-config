return {
    {
        "williamboman/mason.nvim",
        opts = {
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },
        },
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)      -- Go to definition
            vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)      -- Find references
            vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)     -- Go to declaration
            vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)            -- Hover info
            vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)  -- Rename
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts) -- Code actions
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            "neovim/nvim-lspconfig",
        },
        opts = {
            ensure_installed = {
                "lua_ls",
                "pyright",
            },
        },
    },
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
            "L3MON4D3/LuaSnip",
            "saadparwaiz1/cmp_luasnip",
        },
    },
    { "folke/trouble.nvim", opts = {} },
}
