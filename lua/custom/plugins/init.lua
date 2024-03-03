return {
    {
        "pmizio/typescript-tools.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "neovim/nvim-lspconfig"
        },
        opts = {},
    },

    {
        "easymotion/vim-easymotion",
    },

    {
        "folke/zen-mode.nvim",
        opts = {}
    },

    {
        "folke/twilight.nvim",
        opts = {}
    },

    {
        "github/copilot.vim",
    },

    {
        "alexghergh/nvim-tmux-navigation",
        opts = {}
    },

    {
        "robitx/gp.nvim",
        opts = {}
    },

    {
        "nvimdev/lspsaga.nvim",
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
            "nvim-tree/nvim-web-devicons"
        },
        after = 'nvim-lspconfig',
        opts = {}
    },
    { "https://gitlab.com/schrieveslaach/sonarlint.nvim" }

}
