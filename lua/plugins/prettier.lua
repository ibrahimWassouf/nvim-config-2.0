return {
  "MunifTanjim/prettier.nvim",
  config = function()
    require("prettier").setup({
      bin = "prettier",
      filetypes = {
        "css",
        "graphql",
        "html",
        "javascript",
        "javascriptreact",
        "json",
        "less",
        "markdown",
        "scss",
        "typescript",
        "typescriptreact",
        "yaml",
      },
    })
  end,
}
