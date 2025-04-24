return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  cmd = 'NvimTreeOpen',
  keys = {
    { '\\', ':NvimTreeToggle<CR>', desc = 'NvimTree Toggle', silent = true },
  },
  config = function()
    require('nvim-tree').setup {
      view = {
        side = 'right',
      },
    }

    require('nvim-tree.api').events.subscribe('TreeOpen', function()
      vim.b.ministatusline_disable = true
    end)
  end,
}
