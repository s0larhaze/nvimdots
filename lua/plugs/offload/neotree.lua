
return (
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
            "nvim-tree/nvim-web-devicons",
        },
        keys = {
            -- {
            --     "<leader>e",
            --     function()
            --         require("neo-tree.command").execute({ toggle = true })
            --     end,
            --     desc = "Open neo-tree explorer",
            -- },
        },
        config = function ()
            require("neo-tree").setup({
                -- vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", { desc = "Open/Close Neotree", silent = true }),
                vim.keymap.set("n", "<leader>nr", ":Neotree reveal<CR>", { desc = "Neotree reveal", silent = true }),

                window = {
                    position = "left",
                    width = 30,

                    mappings = {
                        ["l"] = "open",
                        ["h"] = "close_node",
                    },
                },
            })
        end,
        lazy = false,
    }
)
