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
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
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
          ['\\'] = 'close_window',
        },
      },
    },
  },
}
