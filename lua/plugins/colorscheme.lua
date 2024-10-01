--. colorschemes that I like: lunaperche, nordtheme

return {
  { "xiyaowong/transparent.nvim" },
  { "rose-pine/neovim", name = "rose-pine" },
  {
    "nordtheme/vim", name = "nord",
    lazy = false,
    priority = 1000,
    config = function()
      --vim.cmd("colorscheme nord")
    end,
  }
}
