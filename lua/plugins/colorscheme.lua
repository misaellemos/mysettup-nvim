--. colorschemes that I like: lunaperche, nordtheme, wildcharm, retrobox

return {
  { "xiyaowong/transparent.nvim" },
  { "rose-pine/neovim", name = "rose-pine" },
  { "scottmckendry/cyberdream.nvim" },
  { "nordtheme/vim", name = "nord" },
  {
    "olivercederborg/poimandres.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd("colorscheme poimandres")
    end,
  }
}
