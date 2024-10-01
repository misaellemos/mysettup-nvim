
return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  --- @module "ibl"
  --- @type ibl.config
  config = function()
    vim.keymap.set("n", "<leader>bl", function()
      require("ibl").setup()
    end, { desc = "BlankLine enable" })
    vim.keymap.set("n", "<leader>bL", "<cmd>IBLDisable<CR>", { desc = "BlankLine disable" })
  end
}
