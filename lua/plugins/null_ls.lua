return {
	"jose-elias-alvarez/null-ls.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local null_ls = require("null-ls")
		--local group = vim.api.nvim_create_augroup("lsp_format_on_save", { clear = false })
		local event = "BufWritePre"
		local async = event == "BufWritePost"
		local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
		--setup from MunifTanjim/prettier.nvim.git
		null_ls.setup({
			-- you can reuse a shared lspconfig on_attach callback here
			on_attach = function(client, bufnr)
				if client.supports_method("textDocument/formatting") then
					vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
					vim.api.nvim_create_autocmd("BufWritePre", {
						group = augroup,
						buffer = bufnr,
						callback = function()
							-- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
							vim.lsp.buf.format({ async = false })
							--vim.lsp.buf.formatting_sync()
						end,
					})
				end
			end,

			--sources I put myself may be unneeded
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.diagnostics.eslint_d,
			},
		})
	end,
}
