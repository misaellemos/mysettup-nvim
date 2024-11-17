
return {
  {
    "jay-babu/mason-null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "williamboman/mason.nvim",
      "nvimtools/none-ls.nvim",
    },
    config = function()
      require("mason-null-ls").setup({
        ensure_installed = { "stylua", "clang_format", "prettier", "google-java-format", "eslint_d", "shfmt" }
      })
    end,
  },
  {
    "nvimtools/none-ls.nvim",
    dependencies = {
      "nvimtools/none-ls-extras.nvim",
    },
    config = function()
      -- get access to the none-ls functions
      local null_ls = require("null-ls")
      -- run the setup function for none-ls to setup our different formatters
      null_ls.setup({
        sources = {
          -- setup lua formatter
          null_ls.builtins.formatting.stylua,
          -- null_ls.builtins.formatting.shfmt,
          -- null_ls.builtins.formatting.clang_format,
          -- setup eslint linter for javascript
          require("none-ls.diagnostics.eslint_d"),
          -- setup prettier to format languages that are not lua
          -- null_ls.builtins.formatting.prettier,
          null_ls.builtins.formatting.prettierd.with({
            extra_args = function(params)
              return params.options
                  and params.options.tabSize
                  and {
                    "--tab-width",
                    params.options.tabSize
                  }
            end
          })
        }
      })

      -- to automatically format our code based on which language server is active
      vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, { desc = "[C]ode [F]ormat" })
    end
  },
}
