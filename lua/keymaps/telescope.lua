
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = "Search files (Telescope)" })
vim.keymap.set('n', '<leader>pg', builtin.git_files, { desc = "Search git_files (Telescope)" })
vim.keymap.set('n', '<leader>vh', builtin.help_tags, { desc = "View helptags (Telescope)" })
vim.keymap.set('n', '<leader>pb', builtin.buffers, { desc = "Search exiting buffers (Telescope)" })
vim.keymap.set('n', '<leader>po', builtin.oldfiles, { desc = "Search recent files (Telescope)" }) -- paia

vim.keymap.set('n', '<leader>Pf', function() builtin.find_files({ cwd = vim.fn.expand('$HOME') }) end,
  { desc = "Search files from $HOME (Telescope)" })

vim.keymap.set('n', '<leader>ps', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") });
end, { desc = "Search string (Telescope)" })

vim.keymap.set('n', '<leader>pws', function()
  local word = vim.fn.expand("<cword>")
  builtin.grep_string({ search = word });
end, { desc = "Search word buffer (Telescope)" })

vim.keymap.set('n', '<leader>pWs', function()
  local word = vim.fn.expand("<cWORD>")
  builtin.grep_string({ search = word });
end, { desc = "Search whole buffer (Telescope)" })
