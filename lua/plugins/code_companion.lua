return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "hrsh7th/nvim-cmp", -- Optional: For using slash commands and variables in the chat buffer
    "nvim-telescope/telescope.nvim", -- Optional: For using slash commands
    { "MeanderingProgrammer/render-markdown.nvim", ft = { "markdown", "codecompanion" } }, -- Optional: For prettier markdown rendering
    { "stevearc/dressing.nvim", opts = {} }, -- Optional: Improves `vim.ui.select`
  },
  config = function()
    require("which-key").add({
      { "<leader>a", group = "+codeCompanion" },
      { "<leader>ac", "<cmd>CodeCompanionChat Toggle<cr>", desc = "Toggle Chat" },
    })

    require("codecompanion").setup({
      strategies = {
        chat = {
          adapter = "openai",
        },
        inline = {
          adapter = "openai",
        },
      },
      adapters = {
        openai = function()
          return require("codecompanion.adapters").extend("openai", {
            env = {
              api_key = os.getenv("OPENAI_API_KEY"),
            },
            schema = {
              model = {
                default = "gpt-4o",
              },
            },
          })
        end,
      },
    })
  end,
}
