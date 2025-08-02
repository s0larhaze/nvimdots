
return (
    {
        "nvim-telescope/telescope.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            local actions = require("telescope.actions")
            local configPath = vim.fn.stdpath("config")
            require("telescope").setup({
                
                vim.keymap.set("n", "<leader>sb", ":Telescope<CR>", { desc = "Search built-ins of Telescope", silent = true }),
                vim.keymap.set("n", "<leader>sf", ":Telescope find_files<CR>", { desc = "Search files", silent = true }),
                vim.keymap.set("n", "<leader>sc", function()
                    require("telescope.builtin").find_files({ cwd = configPath })
                end, { desc = "Search .config", silent = true }),
                vim.keymap.set("n", "<leader>st", ":Telescope live_grep<CR>", { desc = "Search for the text in files", silent = true }),
                vim.keymap.set("n", "<leader>sw", ":Telescope grep_string<CR>", { desc = "Find word references", silent = true }),

                defaults = {
                    mappings = {
                        i = {
                            ["<C-j>"] = actions.move_selection_next, 
                            ["<C-k>"] = actions.move_selection_previous
                        }
                    },
                }
            }, opts)
        end,
    }
)
