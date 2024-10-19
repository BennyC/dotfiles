return {
  -- add dracula
  { "Mofiqul/dracula.nvim" },

  { "ellisonleao/gruvbox.nvim" },

  -- Configure LazyVim to load dracula
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "dracula",
    },
  },
}
