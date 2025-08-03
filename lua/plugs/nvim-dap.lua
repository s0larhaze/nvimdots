return (
    {
        "mfussenegger/nvim-dap",
        dependencies = {
            "rcarriga/nvim-dap-ui",
            "nvim-neotest/nvim-nio",
        },
        config = function()
            local dap = require("dap")
            local ui = require("dapui")

            ui.setup()

            -- Keymaps
            vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, { desc = "Toggle breakpoint" })
            vim.keymap.set("n", "<leader>dc", dap.continue, { desc = "Debug continue" })
            vim.keymap.set("n", "<leader>dw", dap.clear_breakpoints, { desc = "Wash breakpoints away" })

            vim.keymap.set("n", "<F1>", dap.continue)
            vim.keymap.set("n", "<F2>", dap.step_into)
            vim.keymap.set("n", "<F3>", dap.step_over)
            vim.keymap.set("n", "<F4>", dap.step_out)
            vim.keymap.set("n", "<F5>", dap.step_back)
            vim.keymap.set("n", "<F9>", dap.restart)

            -- Adapters
            dap.adapters.cpptools = {
                type = "executable",
                command = vim.fn.stdpath("data") .. "/mason/bin/OpenDebugAD7",
                args = {},
                attach = {
                    pidProperty = "processId",
                    pidSelect = "ask"
                },
            }

            dap.adapters.codelldb = {
                type = "executable",
                command = vim.fn.stdpath("data") .. "/mason/bin/codelldb",
                args = {},
                attach = {
                    pidProperty = "processId",
                    pidSelect = "ask"
                },
            }

            -- Configurations
            dap.configurations.cpp = {
                {
                    name = "Launch debug",
                    type = "codelldb",
                    request = "launch",
                    program = '${workspaceFolder}/main',
                    cwd = '${workspaceFolder}',
                    stopOnEntry = true,
                    args = {},
                    runInTerminal = false,
                },
            }

            dap.configurations.java = {
                {
                    javaExec = "java",
                    request = "launch",
                    type = "java",
                    name = "Debug"
                },
                {
                    type = "java",
                    request = "attach",
                    name = "Debug (Attach) - Remote",
                    hostName = "127.0.0.1",
                    port = 5005,
                }
            }


            dap.listeners.before.attach.dapui_config = function()
                ui.open()
            end
            dap.listeners.before.launch.dapui_config = function()
                ui.open()
            end
            dap.listeners.before.event_terminated.dapui_config = function()
                ui.close()
            end
            dap.listeners.before.event_exited.dapui_config = function()
                ui.close()
            end
        end
    }
)
