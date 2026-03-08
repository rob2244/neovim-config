return {
  {
    "mason-org/mason.nvim",
    config = function(_, opts)
      require("mason").setup(opts)
      local mr = require("mason-registry")
      mr:on("package:install:success", function()
        vim.defer_fn(function()
          require("lazy.core.handler.event").trigger({
            event = "FileType",
            buf = vim.api.nvim_get_current_buf(),
          })
        end, 100)
      end)
      mr.refresh(function()
        for _, tool in ipairs(opts.ensure_installed) do
          local p = mr.get_package(tool)
          if not p:is_installed() and not p:is_installing() then
            p:install()
          end
        end
      end)
    end,
    opts = {
      ensure_installed = {
        -- LSP servers
        "docker-compose-language-service",
        "dockerfile-language-server",
        "eslint-lsp",
        "gopls",
        "json-lsp",
        "lua-language-server",
        "marksman",
        "pyright",
        "rust-analyzer",
        "tailwindcss-language-server",
        "taplo",
        "vtsls",
        "yaml-language-server",

        -- DAP
        "codelldb",
        "debugpy",
        "delve",
        "js-debug-adapter",

        -- Linters
        "golangci-lint",
        "hadolint",
        "markdownlint-cli2",
        "ruff",
        "sqlfluff",

        -- Formatters
        "gofumpt",
        "goimports",
        "markdown-toc",
        "prettier",
        "shfmt",
        "sql-formatter",
        "stylua",

        -- Other
        "bacon",
        "tree-sitter-cli",
      },
    },
  },
}
