-- timestamp primeagen 23min20sec
return {
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  {
    "neovim/nvim-lspconfig",
    dependecies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },

    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup({
        --ensure_installed = { "lua_ls", "rust_analyzer", "jdtls", "clang-format" },
        ensure_installed = { "lua_ls", "rust_analyzer", "jdtls" },
        handlers = {
          function (server_name) -- default handler
            print("setting up ", server_name)
            require("lspconfig")[server_name].setup {}
          end,
        },
      })
      require('lspconfig').lua_ls.setup {
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
    end,

    -- After setting up mason-lspconfig you may set up servers via lspconfig
    -- require("lspconfig").lua_ls.setup {}
    -- require("lspconfig").rust_analyzer.setup {}
    -- ...d
  },
}
-- vim-language-server (keywords: vimscript)
--  clangd
