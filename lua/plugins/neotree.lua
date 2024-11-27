return {
  "nvim-neo-tree/neo-tree.nvim",
  version = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  key = {
    { "<leader>e", "<cmd>Neotree toggle<cr>", desc = "NeoTree" },
  },
  config = function()
    require("neo-tree").setup({
      window = {
        mappings = {
          ["z"] = { "close_all_nodes" },
          [","] = { "expand_all_nodes" },
        },
      },

      filesystem = {
        filtered_items = {
          hide_dotfiles = true,
          hide_gitignore = false,
        },
      },
    })
  end,
}
