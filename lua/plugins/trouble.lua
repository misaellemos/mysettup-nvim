
return {
  "folke/trouble.nvim",
  config = {
    vim.keymap.set('n', '<leader>tt', function()
      require("trouble").toggle();
    end, { desc = "toggle trouble prima" } ),

    vim.keymap.set('n', '<leader>tn', function()
      require("trouble").next({skip_groups = true, jump = true});
    end, { desc = "next trouble prima" } ),

    vim.keymap.set('n', '<leader>tp', function()
      require("trouble").prev({skip_groups = true, jump = true});
    end, { desc = "prev trouble prima" } )
  }, 
  cmd = "Trouble",
  keys = {
    {
      "<leader>xx",
      "<cmd>Trouble diagnostics toggle<cr>",
      desc = "Diagnostics (Trouble)",
    },
    {
      "<leader>xX",
      "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
      desc = "Buffer Diagnostics (Trouble)",
    },
    {
      "<leader>cs",
      "<cmd>Trouble symbols toggle focus=false<cr>",
      desc = "Symbols (Trouble)",
    },
    {
      "<leader>cl",
      "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
      desc = "LSP Definitions / references / ... (Trouble)",
    },
    {
      "<leader>xL",
      "<cmd>Trouble loclist toggle<cr>",
      desc = "Location List (Trouble)",
    },
    {
      "<leader>xQ",
      "<cmd>Trouble qflist toggle<cr>",
      desc = "Quickfix List (Trouble)",
    },
  },
}
