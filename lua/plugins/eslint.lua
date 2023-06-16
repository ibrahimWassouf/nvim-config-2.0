return {
	"MunifTanjim/eslint.nvim",
	config = function()
		require("eslint").setup({
			bin = "eslint_d",
			code_actions = {
				enable = true,
				apply_on_save = {
					enable = true,
					types = { "directive", "problem", "suggestion", "layout" },
				},
				disable_rule_comment = {
					enable = true,
					location = "separate_line",
				},
			},
			diagnostics = {
				enable = true,
				report_unused_disabled_directives = false,
				run_on = "type",
			},
		})
	end,
}
