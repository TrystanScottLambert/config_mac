return {
  "michaelrommel/nvim-silicon",
  lazy = true,
  cmd = "Silicon",
  main = "nvim-silicon",
  opts = {
    font = "JetBrainsMono Nerd Font=34",
    theme = "Monokai Extended",
    background = "#1f2335",
    to_clipboard = true,
  },
  keys = {
    {
      "<leader>sc",
      function()
        require("nvim-silicon").clip()
      end,
      mode = "v",
      desc = "Copy Code Image to Clipboard",
    },
  },
}
