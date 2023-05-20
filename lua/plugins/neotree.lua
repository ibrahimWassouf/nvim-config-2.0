return {
  "nvim-neo-tree/neo-tree.nvim",
  version = "v2.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  key = {
    {'<leader>e', "<cmd>Neotree toggle<cr>", desc = "NeoTree"},
  },
  config = function()
    require("neo-tree").setup()
  end,
}
