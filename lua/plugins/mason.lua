return {
  {
    "williamboman/mason.nvim",
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
