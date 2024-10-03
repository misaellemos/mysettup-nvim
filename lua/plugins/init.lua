
return {
  "folke/neodev.nvim",
  "folke/which-key.nvim",
  {
    "folke/neoconf.nvim",
    cmd = "Neoconf",
    dependencies = { "neovim/nvim-lspconfig" }
  },
  {
    "nvim-lua/plenary.nvim",
    lazy = true
  },
  { "Eandrju/cellular-automaton.nvim" },
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
  },
  "mfussenegger/nvim-jdtls",
  ---:  { "github/copilot.vim" },
}
