


--
-- Use ':so' or ':source %' to reload the config
--


-- In insert mode the cursor would be ▮ instead of |
vim.opt.guicursor = ""
-- vim.opt.guicursor=

-- Display the line number on the left
vim.opt.nu = true

-- Set numbers to be displayed relatively to current line
vim.opt.relativenumber = false

-- The size of a tab character in spaces
vim.opt.tabstop = 4
-- The size of a tab character in spaces
vim.opt.softtabstop = 4
-- The size of >>, << operations in spaces
vim.opt.shiftwidth = 4
-- Converts tabs to spaces
vim.opt.expandtab = true

-- Sets indentaion of a new line the same as the previous line
vim.opt.autoindent = true
vim.opt.smartindent = true

-- If a line doesn't fit on a screen by width, break it on the edge and place it's unfitting part on the next line
vim.opt.wrap = false

-- Use a swapfile that stores changes made to the buffer. Allows to recover changes if something crashes. Dynamic.
vim.opt.swapfile = true

-- Controls whether a backup file is created when a file is written. A snapshot of file's state at a particular moment. Static.
vim.opt.backup = false
-- vim.opt.backupdir = "/home/s0larhaze/.local/share/nvim/backup"

-- Persistent undo, able to undo changes made to a file even after nvim's closed
vim.opt.undofile = true

-- Incremental searching. Highlights the search pattern while typing with /
vim.opt.incsearch = true
-- Live preview for substitute results. "Split" - show changing lines in a new window. "Nosplit" - current window only.
vim.opt.inccommand = "split"
-- Do not take case into account while searching
vim.opt.ignorecase = true
-- Only take case into account while searching when at least on character is uppercase
vim.opt.smartcase = true

-- Turn on 24 bit colors (if the terminal supports it)
vim.opt.termguicolors = true

vim.opt.background = "dark"

vim.opt.splitright = true
vim.opt.splitbelow = true

-- When there is a gap between current position of the cursor and top/bottom of the file, scroll
vim.opt.scrolloff = 10

-- Adds the sign column to the left, there breakpoints, git symbols etc. can be placed
vim.opt.signcolumn = "yes"

-- Controls the behavior of the backspace key in [I]nsert mode.
-- start - permits backspacing past the position where [I]nsert mode was initiated
-- eol - enables backspacing over end-of-line characters.
-- indent - allow backspacing over automatic indentation. Without this autoindent's indentations are not deletable.
vim.opt.backspace = {"start", "eol", "indent"}

-- Enable mouse in all modes
vim.opt.mouse = "a"

-- Consistent coding styles across editors
vim.g.editorconfig = true

-- Set a shared clipboard buffer
-- vim.opt.clipboard = "xclip"
--
vim.opt.clipboard = "unnamedplus"

-- vim.o.termsync = false
