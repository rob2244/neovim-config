return {
  "zbirenbaum/copilot.lua",
  -- load immediately so avante can see it
  lazy = false,
  opts = {
    panel = { enabled = false },
    suggestion = { enabled = false }, -- keep cmp only
    filetypes = {
      yaml = true,
      lua = true,
      javascript = true,
      typescript = true,
      javascriptreact = true,
      typescriptreact = true,
      go = true,
      sql = true,
    },
  },
}
