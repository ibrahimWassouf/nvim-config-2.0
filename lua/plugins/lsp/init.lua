--To install a new lsp:
--add the server config under lspconfig
--run :LspInstall <lang>
--This should make it sync across Mason as well

return {
	{
		"VonHeikemen/lsp-zero.nvim",
		config = function()
			local lspzero = require("lsp-zero")
			lspzero.extend_lspconfig()

			lspzero.on_attach(function(client, bufnr)
				lspzero.default_keymaps({ buffer = bufnr })
				vim.api.nvim_create_autocmd("BufWritePre", {
					buffer = buffer,
					callback = function()
						vim.lsp.buf.format({ async = false })
					end,
				})
			end)

			local lspconfig = require("lspconfig")
			local mason_registry = require("mason-registry")
			lspconfig.tsserver.setup({})
			lspconfig.lua_ls.setup({})
			lspconfig.hls.setup({})
			--[[
      --lspconfig.clangd.setup({
				capabilities = require("cmp_nvim_lsp").default_capabilities(),
				cmd = {
					"clangd",
					"--header-insertion=never",
				},
			})
      --]]
			lspconfig.clangd.setup({
				cmd = { "clangd", "--background-index", "--clang-tidy", "--log=verbose" },
				init_options = {
					fallbackFlags = { "-std=c++17" },
				},
			})
			lspconfig.ltex.setup({
				settings = {
					ltex = {
						language = "en-CA",
					},
				},
			})
			lspconfig.jdtls.setup({
				settings = {
					--[[
          format = {
            settings = {
              url = "~/.local/share/eclipse/eclipse-java-google-style.xml",
              profile = "GoogleStyle",
            },
          },
          ]]
					--
					signatureHelp = { enabled = true },
					completion = {
						favoriteStaticMembers = {
							"org.hamcrest.MatcherAssert.assertThat",
							"org.hamcrest.Matchers.*",
							"org.hamcrest.CoreMatchers.*",
							"org.junit.jupiter.api.Assertions.*",
							"java.util.Objects.requireNonNull",
							"java.util.Objects.requireNonNullElse",
							"org.mockito.Mockito.*",
						},
					},
				},
			})
		end,
	},
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
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup()
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
			require("lspsaga").setup({
				debug = true,
			})
		end,
	},
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/nvim-cmp" },
}

--[[
{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.tsserver.setup({})
			lspconfig.lua_ls.setup({})
			lspconfig.hls.setup({})
			lspconfig.ltex.setup({
				settings = {
					ltex = {
						language = "en-CA",
					},
				},
			})
			lspconfig.jdtls.setup({})
		end,
	},

--]]
