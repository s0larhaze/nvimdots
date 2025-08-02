
return (
    {
        "folke/snacks.nvim",
        priority = 1000,
        lazy = false,
        opts = {
            bigfile = { enabled = true },
            dashboard = { enabled = true },
            explorer = { enabled = true, replace_netrw = true },
            indent = { enabled = true },
            input = { enabled = true,
                    icon = " ",
                    icon_hl = "SnacksInputIcon",
                    icon_pos = "left",
                    prompt_pos = "title",
                    win = { style = "input" },
                    expand = true,
            },
            picker = { enabled = true },
            notifier = { enabled = true },
            quickfile = { enabled = true },
            scope = { enabled = true },
            scroll = { enabled = false },
            statuscolumn = { enabled = true },
            words = { enabled = true },
        },
        keys = {
            { "<leader>ss", function ()
                Snacks.picker.smart()
            end,
            desc = "Smart Find Files"
            },
            { "<leader>sg", function ()
                Snacks.picker.grep()
            end,
            desc = "Grep"
            },
            { "<leader>sr", function ()
                Snacks.picker.recent()
            end,
            desc = "Recent"
            },
            { "<leader>e", function ()
                Snacks.picker.explorer()
            end,
            desc = "Snacks explorer"
            },
        }
    }
)
