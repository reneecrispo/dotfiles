
local ok, neotree = pcall(require, "neo-tree")
if not ok then
  return
end

local ok, neotree = pcall(require, "neo-tree")
if not ok then
  return
end

neotree.setup({
  close_if_last_window = true,
  popup_border_style = "rounded",
  enable_git_status = true,
  enable_diagnostics = true,

  default_component_configs = {
    icon = {
      folder_closed = "[+]",
      folder_open = "[-]",
      folder_empty = "[ ]",
      default = "•",
    },
    git_status = {
      symbols = {
        added     = "+",
        modified  = "~",
        deleted   = "x",
        renamed   = "→",
        untracked = "?",
        ignored   = ".",
        unstaged  = "!",
        staged    = "✓",
        conflict  = "!",
      },
    },
  },

  filesystem = {
    filtered_items = {
      hide_dotfiles = false,
      hide_gitignored = true,
    },
    follow_current_file = {
      enabled = true,
    },
    hijack_netrw_behavior = "open_default",
  },

  window = {
    position = "left",
    width = 30,
    mappings = {
      ["<space>"] = "toggle_node",
      ["<cr>"] = "open",
      ["q"] = "close_window",
    },
  },
})

-- Apri Neo-tree automaticamente all'avvio
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    require("neo-tree.command").execute({
      toggle = true,
      position = "left",
      reveal = true,
      dir = vim.loop.cwd(),
    })
  end,
})

-- Forza il focus sul buffer principale all'avvio
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    if vim.bo.filetype == "neo-tree" then
      vim.cmd("wincmd p")
    end
  end,
})

-- Blocca la chiusura della finestra Neo-tree
vim.api.nvim_create_autocmd("WinClosed", {
  pattern = "*",
  callback = function()
    local bufnr = vim.fn.winbufnr(vim.fn.winnr())
    local ft = vim.api.nvim_buf_get_option(bufnr, "filetype")
    if ft == "neo-tree" then
      vim.defer_fn(function()
        require("neo-tree.command").execute({ toggle = true, position = "left" })
      end, 50)
    end
  end,
})

-- Quando apri un file dalla tree, vai automaticamente nel buffer del file
vim.api.nvim_create_autocmd("FileType", {
  pattern = "neo-tree",
  callback = function()
    vim.api.nvim_buf_set_keymap(
      0,
      "n",
      "<CR>",
      "<cmd>lua require('neo-tree.ui.renderer').focus_next_window(true)<CR>",
      { noremap = true, silent = true }
    )
  end,
})
