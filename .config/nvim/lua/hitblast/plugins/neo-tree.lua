return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { '<Leader>e', ':Neotree filesystem reveal float<CR>', desc = 'Show file explorer', silent = true },
  },
  opts = {
    filesystem = {
      filtered_items = {
        visible = true, -- Show hidden files
        show_hidden_count = true, -- Optional: show count of hidden files
        hide_dotfiles = false, -- Do not hide dotfiles
        hide_gitignored = false, -- Do not hide gitignored files
      },
      window = {
        mappings = {
          ['<Leader>e'] = 'close_window',
        },
      },
    },
  },
}
