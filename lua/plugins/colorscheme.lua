return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim", opts = { contrast = "dark" } },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
