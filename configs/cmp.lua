return {
  PreselectMode = { "none" },
  sources = {
    { name = "emoji" },
    { name = "nvim_lsp" },
    { name = "nvim_lua" },
    { name = "buffer" },
    { name = "path" },
    { name = "luasnip" },
  },
  -- nvim-cmp max rows 5 and enable scroll_bar
  window = {
    completion = {
      scrollbar = true,
    },
  },
  formatting = {
    -- fields = { "abbr", "kind", "abbr", "menu" },
  },
}
