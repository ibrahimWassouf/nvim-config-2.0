return {
  "williamboman/mason.nvim",
	build = ":MasonUpdate",
	dependencies = {
		"neovim/nvim-lspconfig",
	},
	config = function()
		require("mason").setup()
	end,
}
