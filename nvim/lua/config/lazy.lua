-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.opt.conceallevel = 1
vim.opt.number = true            -- Show line numbers
vim.opt.relativenumber = true    -- Show relative line numbers
vim.opt.cursorline = true        -- Highlight the current cursor line
vim.opt.signcolumn = "yes"       -- Always show the sign column (e.g., for Git signs)
vim.opt.wrap = false             -- Disable line wrapping
vim.opt.scrolloff = 8            -- Minimal number of lines to keep above and below the cursor
vim.opt.sidescrolloff = 8        -- Minimal number of columns to keep at the sides of the cursor
vim.opt.termguicolors = true     -- Enable 24-bit RGB colors in the terminal
vim.opt.expandtab = true         -- Convert tabs to spaces
vim.opt.shiftwidth = 4           -- Number of spaces to use for each level of indentation
vim.opt.tabstop = 4              -- Number of spaces that a tab counts for
vim.opt.smartindent = true       -- Automatically inserts the correct indentation
vim.opt.autoindent = true        -- Copy indent from current line when starting a new line
vim.opt.hlsearch = true          -- Highlight all search matches
vim.opt.ignorecase = true        -- Ignore case when searching
vim.opt.smartcase = true         -- Override ignorecase if the search contains uppercase characters
vim.opt.incsearch = true         -- Show search results as you type
vim.opt.updatetime = 300         -- Faster completion and diagnostics (default is 4000 ms)
vim.opt.timeoutlen = 500         -- Shorter timeout for mapped sequences
vim.opt.foldmethod = "expr"      -- Use Treesitter for folding
vim.opt.foldexpr = "nvim_treesitter#foldexpr()" -- Use Treesitter expressions for folding
vim.opt.foldenable = false       -- Start with all folds open
vim.opt.splitright = true        -- Vertical splits open to the right
vim.opt.splitbelow = true        -- Horizontal splits open below


-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- import your plugins
    { import = "plugins" },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})
