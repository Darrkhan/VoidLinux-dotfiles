return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")
    local lazy_status = require("lazy.status") -- to configure lazy pending updates count
     -- configure lualine with modified theme
    lualine.setup({
      options = {
    icons_enabled = true,
    component_separators = { '|' },
    section_separators = { '|' },
    theme = {
      normal = {
        a = { fg = '#f2e9de', bg = '#9c6644' },
        b = { fg = '#575268', bg = '#d3cec4' },
        c = { fg = '#575268', bg = '#f2e9de' },
      },
      inactive = {
        a = { fg = '#d3cec4', bg = '#f2e9de' },
        b = { fg = '#d3cec4', bg = '#f2e9de' },
        c = { fg = '#d3cec4', bg = '#f2e9de' },
      },
    },
    globalstatus = true,
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'branch', 'diff', 'diagnostics' },
    lualine_c = { 'filename' },
    lualine_x = { 'encoding', 'fileformat', 'filetype' },
    lualine_y = { 'progress' },
    lualine_z = { 'location' },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { 'filename' },
    lualine_x = { 'location' },
    lualine_y = {},
    lualine_z = {},
  },
      tabline = {},
      extensions = {},
    })
  end,
}
