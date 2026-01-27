local ok, telescope = pcall(require, "telescope")
if not ok then return end

telescope.setup({
  defaults = {
    file_ignore_patterns = { "node_modules", ".git/" },
  },
})

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map("n", "<Leader>ff", "<cmd>Telescope find_files<cr>", opts)
map("n", "<Leader>fg", "<cmd>Telescope live_grep<cr>", opts)
map("n", "<Leader>fb", "<cmd>Telescope buffers<cr>", opts)
map("n", "<Leader>fh", "<cmd>Telescope help_tags<cr>", opts)
