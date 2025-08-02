

return (
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "master",
        lazy = false,
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = {
                    "lua",
                    "java",
                    "vim",
                    "vimdoc",
                    "markdown",
                },
                auto_install = true,
            })
        end
    }
)
