return {
  'MeanderingProgrammer/render-markdown.nvim',
  dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' },
  opts = {
    code = {
      sign = false,
      width = 'block',
      right_pad = 1,
    },
    heading = {
      sign = true,
      -- icons = {},
    },
    checkbox = {
      enabled = false,
    },
  },
  ft = { 'markdown', 'norg', 'rmd', 'org', 'codecompanion' },
  config = function(_, opts)
    require('render-markdown').setup(opts)
    --- @module 'snacks'
    Snacks.toggle({
      name = 'Render Markdown',
      get = function()
        return require('render-markdown.state').enabled
      end,
      set = function(enabled)
        local m = require 'render-markdown'
        if enabled then
          m.enable()
        else
          m.disable()
        end
      end,
    }):map '<leader>tm'
  end,
}
