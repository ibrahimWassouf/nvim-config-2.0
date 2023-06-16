return {
	--mason setup
	{
		"williamboman/mason.nvim",
		build = ":MasonUpdate",
		dependencies = {
			"neovim/nvim-lspconfig",
		},
		config = function()
			require("mason").setup()
		end,
	},
	--mason-lspconfig setup
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup()
		end,
	},
	--lsp-config setup
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.tsserver.setup({})
		end,
	},
  {
    "glepnir/lspsaga.nvim",
	  event = "LspAttach",
    dependencies = {
		  { "nvim-tree/nvim-web-devicons" },
		  --Please make sure you install markdown and markdown_inline parser
		  { "nvim-treesitter/nvim-treesitter" },
	  },
	  config = function()
		  require("lspsaga").setup({})
	  end,

    },
}
