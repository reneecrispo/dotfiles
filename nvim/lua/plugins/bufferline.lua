
vim.api.nvim_create_user_command("Bd", function()
  vim.cmd("b# | bd#")
end, {})

require("bufferline").setup{
  options = {
    numbers = "none",
    close_command = "Bd",      -- use plugin command
    right_mouse_command = "Bd",
    show_buffer_close_icons = true,
    show_close_icon = true,
    show_tab_indicators = true,
    persist_buffer_sort = true,
    offsets = {
      { filetype = "NvimTree", text = "File Explorer", text_align = "left" }
    },
  }
}
