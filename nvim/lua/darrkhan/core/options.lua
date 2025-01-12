vim.cmd("let g:netrw_liststyle = 3")

vim.opt.relativenumber = true
vim.opt.number = true

-- tabs & indentation
vim.opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
vim.opt.shiftwidth = 2 -- 2 spaces for indent width
vim.opt.expandtab = true -- expand tab to spaces
vim.opt.autoindent = true -- copy indent from current line when starting a new one

vim.opt.wrap = false

-- search settings
vim.opt.ignorecase = true -- ignore case when searching
vim.opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

vim.opt.cursorline = true

-- turn on termguicolors
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- backspace
vim.opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
vim.opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
vim.opt.splitright = true -- split vertical window to the right
vim.opt.splitbelow = true -- split horizontal window to the bottom

