
return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    "windwp/nvim-ts-autotag"
  },
  build = ":TSUpdate",
  config = function ()
    local configs = require("nvim-treesitter.configs")
    configs.setup({
      ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "java", "elixir", "heex", "javascript", "typescript", "html", "css", "json", "tsx", "markdown", "markdown_inline", "gitignore" },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
      autotag = { enable = true }, -- enable auto closing tag creation
    })
    require('nvim-ts-autotag').setup({
      opts = {
        -- Defaults
        enable_close = true, -- Auto close tags
        enable_rename = true, -- Auto rename pairs of tags
        enable_close_on_slash = false -- Auto close on trailing </
      },
      -- Also override individual filetype configs, these take priority.
      -- Empty by default, useful if one of the "opts" global settings
      -- doesn't work well in a specific filetype
      per_filetype = {
        ["html"] = {
          enable_close = false
        }
      }
    })

  end
}

