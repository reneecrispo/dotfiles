
local opts = { noremap = true, silent = true }

vim.api.nvim_set_keymap("i", "<Tab>", 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', {expr=true, noremap=true})
vim.api.nvim_set_keymap("i", "<S-Tab>", 'pumvisible() ? "\\<C-p>" : "\\<S-Tab>"', {expr=true, noremap=true})

-- Coc.nvim keymaps
vim.api.nvim_set_keymap('n', 'gd', '<Plug>(coc-definition)', {})
vim.api.nvim_set_keymap('n', 'gy', '<Plug>(coc-type-definition)', {})
vim.api.nvim_set_keymap('n', 'gi', '<Plug>(coc-implementation)', {})
vim.api.nvim_set_keymap('n', 'gr', '<Plug>(coc-references)', {})

-- Clipboard yank / paste
vim.api.nvim_set_keymap('n', '<Leader>y', '"+y', opts)
vim.api.nvim_set_keymap('v', '<Leader>y', '"+y', opts)
vim.api.nvim_set_keymap('n', '<Leader>p', '"+p', opts)

-- Delete without yanking
vim.keymap.set("n", "dd", '"_dd', vim.tbl_extend("force", opts, { desc = "Delete line without yanking" }))
vim.keymap.set("n", "D", '"_D', vim.tbl_extend("force", opts, { desc = "Delete to end of line without yanking" }))
vim.keymap.set("n", "x", '"_x', vim.tbl_extend("force", opts, { desc = "Delete char without yanking" }))
vim.keymap.set("n", "c", '"_c', vim.tbl_extend("force", opts, { desc = "Change text without yanking" }))
vim.keymap.set("n", "dw", '"_dw', vim.tbl_extend("force", opts, { desc = "Delete word without yanking" }))
vim.keymap.set("n", "dW", '"_dW', vim.tbl_extend("force", opts, { desc = "Delete WORD without yanking" }))
vim.keymap.set("v", "d", '"_d', vim.tbl_extend("force", opts, { desc = "Delete selection without yanking" }))
vim.keymap.set("v", "x", '"_x', vim.tbl_extend("force", opts, { desc = "Delete selection without yanking" }))

-- Telescope (find)
vim.api.nvim_set_keymap("n", "<Leader>ff", "", { noremap = true, silent = true, callback = function()
 require('telescope.builtin').find_files({ hidden = true })
end })
vim.api.nvim_set_keymap("n", "<Leader>fg", "<cmd>Telescope live_grep<cr>", opts)
vim.api.nvim_set_keymap("n", "<Leader>fb", "<cmd>Telescope buffers<cr>", opts)
vim.api.nvim_set_keymap("n", "<Leader>fh", "<cmd>Telescope help_tags<cr>", opts)

-- Spectre find and replace
vim.keymap.set('n', '<leader>S', '<cmd>lua require("spectre").toggle()<CR>', { desc = "Toggle Spectre" })
vim.keymap.set('n', '<leader>sw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', { desc = "Search current word" })
vim.keymap.set('v', '<leader>sw', '<esc><cmd>lua require("spectre").open_visual()<CR>', { desc = "Search current word" })
vim.keymap.set('n', '<leader>sp', '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', { desc = "Search on current file" })

-- Switch between buffers
vim.api.nvim_set_keymap("n", "<Leader><Leader>", ":bn<CR>", { noremap = true, silent = true }) -- next buffer
vim.api.nvim_set_keymap("n", "<Leader>b", ":bp<CR>", { noremap = true, silent = true }) -- previous buffer

-- Chiude il buffer corrente con <leader>q
vim.api.nvim_set_keymap('n', '<Leader>q', ':Bd<CR>', { noremap = true, silent = true })
-- LazyGit
vim.keymap.set("n", "<leader>gg", function()
  vim.cmd("tabnew | terminal lazygit | quit")
end, { desc = "Open LazyGit in tab" })
