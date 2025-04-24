return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  event = 'VeryLazy',
  keys = {
    { '<S-h>', '<Cmd>BufferLineCyclePrev<CR>', desc = 'Prev Buffer' },
    { '<S-l>', '<Cmd>BufferLineCycleNext<CR>', desc = 'Next Buffer' },
  },
  opts = {
    options = {
      offsets = {
        {
          filetype = 'neo-tree',
          text = 'File Explorer',
          text_align = 'left',
          separator = true,
        },
        {
          filetype = 'NvimTree',
          text = 'File Explorer',
          text_align = 'left',
          separator = true,
        },
      },
    },
  },
  config = function(_, opts)
    vim.opt.termguicolors = true
    require('bufferline').setup(opts)
  end,
}
