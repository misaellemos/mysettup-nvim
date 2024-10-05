
return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {},
  keys = {
    { "<leader>?", function() require("which-key").show({ global = false })
    end },
    {"<leader>p", group = "file" },
  },config = function()
    -- gain access to the which key plugin
    local which_key = require('which-key')

    -- Register prefixes for the different key mappings we have setup previously
    which_key.add({
      { '<leader>/', group = "Comments", icon = { icon = "󰵅", color = "gray" } },
      { '<leader>?', group = "Local Keymaps (Whichkey)", icon = { icon = "?", color = "pink" } },
      { '<leader>a', group = 'Add to list (Harpoon)', icon = { icon = "󰛢", color = "azure" } },
      { '<leader>b', group = '[B] Help ident', icon = { icon = "", color = "blue" } },
      { '<leader>c', group = '[C] Code', },
      { '<leader>d', group = '[D] Debug' , },
      { '<leader>f', group = '[F] Surprise', icon = { icon = "󰈸", color = "yellow" } },
      { '<leader>fm', group = '[FM] Almost there', icon = { icon = "󰈸", color = "red" } },
      { '<leader>g', group = '[G] Git' },
      { '<leader>J', group = '[J] Java', icon = { icon = "", color = "white" } },
      { '<leader>p', group = '[P] Searches' },
      { '<leader>pf', icon = { icon = "", color = "cyan" } },
      { '<leader>pF', icon = { icon = "", color = "cyan" } },
      { '<leader>pg', icon = { icon = "", color = "cyan" } },
      { '<leader>po', icon = { icon = "", color = "cyan" } },
      { '<leader>ps', icon = { icon = "", color = "cyan" } },
      { '<leader>pv', icon = { icon = "", color = "gray" } },
      { '<leader>pw', group = '[PW] Buffer Searches', icon = { icon = "󰛔", color = "blue" } },
      { '<leader>pws', icon = { icon = "󰛔", color = "blue" } },
      { '<leader>pwS', icon = { icon = "󰛔", color = "blue" } },
      { '<leader>t', group = '[T] Trouble', icon = { icon = "󰙵", color = "red" } },
      { '<leader>v', group = '[V] View', icon = { icon = "", color = "blue" } },
      { '<leader>x', group = '[X] Trouble', icon = { icon = "󱖫", color = "red" } },
      { '<leader>w', group = '[W] Window' },
      { '<leader>z', group = '[Z] Zen', icon = { icon = "󱅻", color = "cyan" }},
    })
  end,
}
--  { plugin = "nvim-spectre", icon = "󰛔 ", color = "blue" },
 -- { pattern = "search", icon = " ", color = "green" },
