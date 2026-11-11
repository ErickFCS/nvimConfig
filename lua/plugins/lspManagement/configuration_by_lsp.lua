return {
  basedpyright = {
    settings = {
      basedpyright = {
        analysis = {
          typeCheckingMode = "standard",
          -- Let Ruff handle unused imports and variables
          diagnosticSeverityOverrides = {
            reportUnusedImport = "none",
            reportUnusedVariable = "none",
          },
        },
      },
    },
  },
  ruff = {
    on_attach = function(client, bufnr)
      if client.server_capabilities then
        client.server_capabilities.hoverProvider = false
      end
    end,
  },
  cssls = {
    filetypes = { "css", "scss", "less", "html", "htmldjango", "jinja" },
    settings = {
      css = { validate = true, lint = { unknownAtRules = "ignore" } },
      scss = { validate = true, lint = { unknownAtRules = "ignore" } },
      less = { validate = true, lint = { unknownAtRules = "ignore" } },
    },
  },
  ts_ls = {
    init_options = {
      hostInfo = "neovim",
    },
    -- Ensures it properly evaluates the workspace root and node_modules path
    root_dir = function(bufnr, _)
      return vim.fs.root(bufnr, { "tsconfig.json", "package.json", "jsconfig.json", ".git" })
    end,
  },
}
