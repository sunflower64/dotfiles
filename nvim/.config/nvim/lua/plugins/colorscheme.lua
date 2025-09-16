local host = (vim.loop and vim.loop.os_gethostname()) or ""
local theme

if host == "fedora" then
  theme = "lushwal"
elseif host == "cachy" then
  theme = "everforest"
else
  theme = "kanagawa"
end

return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = true,
    priority = 1000,
    opts = {
      variant = "main",
      styles = { transparency = true },
    },
  },
  {
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    lazy = true,
    priority = 1000,
    opts = {
      transparent = true,
    },
  },
  {
    "ellisonleao/gruvbox.nvim",
    opts = {
      transparent_mode = true,
    },
  },
  {
    "neanias/everforest-nvim",
    version = false,
    lazy = false,
    priority = 1000, -- make sure to load this before all the other start plugins
    -- Optional; default configuration will be used if setup isn't called.
    config = function()
      require("everforest").setup({
        background = "medium",
      })
    end,
  },
  {
    "gbprod/nord.nvim",
    version = false,
    lazy = false,
    priority = 1000,
  },
  {
    "RedsXDD/neopywal.nvim",
    name = "neopywal",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "oncomouse/lushwal.nvim",
    cmd = { "LushwalCompile" },
    init = function()
      vim.g.lushwal_configuration = {
        terminal_colors = true,
        transparent_background = true,
        color_overrides = {
          background = "#000",
        },
      }
    end,
    dependencies = {
      { "rktjmp/lush.nvim" },
      { "rktjmp/shipwright.nvim" },
    },
    lazy = false,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = theme,
    },
  },
}
