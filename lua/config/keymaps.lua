local opts = { noremap = true, silent = true }

-- Set leader key (as space)
vim.g.mapleader = " "
-- Set local leader key (as space)
vim.g.maplocalleader = " "

-- Move selected lines up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move down selected lines" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move up selected lines" })

-- Shifts
vim.keymap.set("v", ">", ">gv", { desc = "Move selected lines to the right indefinetely"})
vim.keymap.set("v", "<", "<gv", { desc = "Move selected lines to the left indefinetely"})

-- Ctrl+c actions
vim.keymap.set("i", "<C-c>", "<Esc>", { desc = "Exit insertion mode" })
vim.keymap.set("n", "<C-c>", ":nohl<CR>", { desc = "Clear search highlight", silent = true })

-- Turn off Q
vim.keymap.set("n", "Q", "<nop>")

-- Replace all instances of the word under the cursor
vim.keymap.set("n", "<leader>rw", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Replace all instances of the word under the cursor" })

-- Open ToggleTerm
vim.keymap.set("n", "<leader>tt", ":ToggleTerm<CR>", { desc = "Open ToggleTerm" })

-- Switch window focus easier
vim.keymap.set("n", "<C-j>", "<C-W>j", { desc = "Switch focus to the window below" })
vim.keymap.set("n", "<C-k>", "<C-W>k", { desc = "Switch focus to the window above" })
vim.keymap.set("n", "<C-h>", "<C-W>h", { desc = "Switch focus to the window on the left" })
vim.keymap.set("n", "<C-l>", "<C-W>l", { desc = "Switch focus to the window on the right" })

-- FineCmdline
vim.keymap.set("n", "<leader>:", ":FineCmdline<CR>", { desc = "Open FineCmdLine", silent = true })

-- Neotree Open/Close
-- vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", { desc = "Open/Close Neotree", silent = true })

vim.keymap.set("n", "<leader>f", function()vim.lsp.buf.format({ async = false })end, { desc = "LSP format" })

-- Doesn't seem to work
-- -- Redefine Control-c as escape.
-- vim.keymap.set({ "n", "v", "i" }, "<C-c>", "<Esc>")
--

-- Change the directory to the current file's directory
vim.keymap.set("n", "<leader>ccd", function ()
    -- local full_path = vim.api.nvim_bf_get_name(0)
    -- local directory = vim.fn.fnamemodify(full_path, ":h")
    vim.cmd("cd %:h")
    vim.notify("Changed cwd to the current file's directory", "info")
end)

-- lsp definition
vim.keymap.set("n", "grd", vim.lsp.buf.declaration, { buffer = bufnr, desc = "Go to Definition" })
