return {
    {
        "ribru17/bamboo.nvim",
        name = "bamboo",
        lazy = false,
        priority = 1001,
        config = function ()
            require("bamboo").setup({
                style = "vulgaris",
                -- transparent = true,
                -- term_colors = true,
            })
            require("bamboo").load()
        end
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        lazy = false,
        priority = 1000,
    },
}
