return {
  'zbirenbaum/copilot.lua',
  dependencies = {
    'copilotlsp-nvim/copilot-lsp',
  },
  lazy = false,
  opts = {
    suggestion = { enabled = true, auto_trigger = true },
    panel = { enabled = true },
  },
}
