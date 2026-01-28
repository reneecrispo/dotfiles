require("bufferline").setup{
  options = {
    numbers = "none",
    close_command = "bdelete! %d",      
    right_mouse_command = "bdelete! %d",
    show_buffer_close_icons = true,
    show_close_icon = true,
    show_tab_indicators = true,
    persist_buffer_sort = true,
    offsets = {{filetype = "NvimTree", text = "File Explorer", text_align = "left"}},
  }
}
