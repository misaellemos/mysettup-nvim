
return {
  "nvim-telescope/telescope.nvim",
  dependecies = { "nvim-lua/plenary.nvim" },
  config = function()
    require('telescope').setup{
      defaults = {
        --                layout_strategy = 'horizontal',
        --                layout_config = { height = 0.9 },
        --        layout_strategy = 'vertical',
        --        layout_config = { height = 0.95 },
        layout_strategy = 'vertical',
        layout_config = {
          vertical = {
            prompt_position = 'top',
            mirror = true,
          },
          horizontal = {
            preview_cutoff = 0,
          },
        },

      }
    }
  end
  -- telescope.layout.horizontal()
  -- resolver.resolve_width()
  -- preview_width = 0.3
}
