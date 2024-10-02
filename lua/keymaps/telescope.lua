
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>Pf', function() builtin.find_files({ cwd = vim.fn.expand('$HOME') }) end,
  { desc = "Search files from $HOME (Telescope)" })

vim.keymap.set('n', '<c-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") });
end, { desc = "Search (Telescope)" })

vim.keymap.set('n', '<leader>pws', function()
  local word = vim.fn.expand("<cword>")
  builtin.grep_string({ search = word });
end, { desc = "Search word buffer (Telescope)" })

vim.keymap.set('n', '<leader>pWs', function()
  local word = vim.fn.expand("<cWORD>")
  builtin.grep_string({ search = word });
end, { desc = "Search whole buffer (Telescope)" })

vim.keymap.set('n', '<leader>vh', builtin.help_tags, { desc = "View helptags" })

