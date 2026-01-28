
vim.api.nvim_set_keymap("i", "<Tab>", 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', {expr=true, noremap=true})
vim.api.nvim_set_keymap("i", "<S-Tab>", 'pumvisible() ? "\\<C-p>" : "\\<S-Tab>"', {expr=true, noremap=true})

-- Coc.nvim keymaps
vim.api.nvim_set_keymap('n', 'gd', '<Plug>(coc-definition)', {})
vim.api.nvim_set_keymap('n', 'gy', '<Plug>(coc-type-definition)', {})
vim.api.nvim_set_keymap('n', 'gi', '<Plug>(coc-implementation)', {})
vim.api.nvim_set_keymap('n', 'gr', '<Plug>(coc-references)', {})

-- Clipboard yank / paste
vim.api.nvim_set_keymap('n', '<Leader>y', '"+y', {noremap=true, silent=true})
vim.api.nvim_set_keymap('v', '<Leader>y', '"+y', {noremap=true, silent=true})
vim.api.nvim_set_keymap('n', '<Leader>p', '"+p', {noremap=true, silent=true})

-- Spectre find and replace
vim.keymap.set('n', '<leader>S', '<cmd>lua require("spectre").toggle()<CR>', { desc = "Toggle Spectre" })
vim.keymap.set('n', '<leader>sw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', { desc = "Search current word" })
vim.keymap.set('v', '<leader>sw', '<esc><cmd>lua require("spectre").open_visual()<CR>', { desc = "Search current word" })
vim.keymap.set('n', '<leader>sp', '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', { desc = "Search on current file" })

-- LazyGit
vim.keymap.set("n", "<leader>gg", "<cmd>LazyGit<cr>", { desc = "LazyGit" })
vim.keymap.set("n", "<leader>gf", "<cmd>LazyGitCurrentFile<cr>", { desc = "LazyGit current file" })
vim.keymap.set("n", "<leader>gl", "<cmd>LazyGitLog<cr>", { desc = "LazyGit log" })
vim.keymap.set("n", "<leader>gb", "<cmd>LazyGitFilter<cr>", { desc = "LazyGit branch filter" })
vim.keymap.set("n", "<leader>gc", "<cmd>LazyGitFilterCurrentFile<cr>", { desc = "LazyGit commits (file)" })
