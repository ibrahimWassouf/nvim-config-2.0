return {
  "L3MON4D3/LuaSnip",
  -- follow latest release.
  version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
  -- install jsregexp (optional!).
  build = "make install_jsregexp",
  config = function()
    -- Setting LuaSnip config
    require("luasnip").config.set_config({
      -- Enable autotriggered snippets
      enable_autosnippets = true,

      -- Use Tab (or some other key if you prefer) to trigger visual selection
      store_selection_keys = "<Tab>",

      -- Lazy-load snippets, i.e. only load when required, e.g. for a given filetype
      require("luasnip.loaders.from_lua").lazy_load({ paths = "~/.config/nvim/luasnip/" }),
    })
  end,
}
