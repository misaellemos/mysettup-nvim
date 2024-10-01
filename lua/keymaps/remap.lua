
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Exit file to netrw" })

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Remove search highlights" })
-- vim.keymap.set("n", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" }); horible remap esc2x lags quitting that needs esc2x

-- better window navigation
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-h>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- split windows
vim.keymap.set("n", "<leader>wv", ":vsplit<CR>", { desc = "Window split vertical" })
vim.keymap.set("n", "<leader>wh", ":split<CR>", { desc = "Window split horizontal" })

-- in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move marked text" })
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv", { desc = "Move marked text" })
vim.keymap.set("v", "<", "<gv", { desc = "Ident left" })
vim.keymap.set("v", ">", ">gv", { desc = "Ident right" })

-- hero
vim.keymap.set("n", "<leader>fml", "<cmd>CellularAutomaton make_it_rain<CR>", { desc = "Best thing ever" })
