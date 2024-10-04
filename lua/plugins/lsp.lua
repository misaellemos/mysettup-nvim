
-- timestamp primeagen 23min20sec
return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "mfussenegger/nvim-dap",
      "jay-babu/mason-nvim-dap.nvim",
    },

    config = function()
      require("mason").setup()
      require("mason-nvim-dap").setup({ ensure_installed = { "java-debug-adapter", "java-test" } })

      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "rust_analyzer", "jdtls", "ts_ls"  },
        handlers = {
          function (server_name) -- default handler
            print("setting up ", server_name)
            require("lspconfig")[server_name].setup {}
          end,
        },
      })

      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup {
        settings = {
          Lua = {
            runtime = {
              -- Tell the language server which version of Lua you're using
              -- (most likely LuaJIT in the case of Neovim)
              version = 'LuaJIT',
            },
            diagnostics = {
              -- Get the language server to recognize the `vim` global
              globals = {
                'vim',
                'require'
              },
            },
            workspace = {
              -- Make the server aware of Neovim runtime files
              library = vim.api.nvim_get_runtime_file("", true),
            },
            -- Do not send telemetry data containing a randomized but unique identifier
            telemetry = {
              enable = false,
            },
          },
        },
      }

      lspconfig.ts_ls.setup({})
    end,

    -- After setting up mason-lspconfig you may set up servers via lspconfig
    -- require("lspconfig").lua_ls.setup {}
    -- require("lspconfig").rust_analyzer.setup {}
  },
  { "mfussenegger/nvim-jdtls", dependencies = "mfussenegger/nvim-dap" },
}
