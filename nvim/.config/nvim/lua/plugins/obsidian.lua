return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = true,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "Fafnir",
        path = "~/Documents/Vault/Fafnir/",
      },
    },
    ui = { enable = false },
    completion = {
      nvim_cmp = true,
      blink = true,
      min_chars = 1, -- show suggestions after `[[f`
      create_new = true,
    },
  },
  keys = {
    -- This makes <leader>o open a group called "+obsidian"
    { "<leader>o", group = "+obsidian" },

    -- Example: Obsidian command palette
    {
      "<leader>oc",
      "<cmd>ObsidianQuickSwitch<cr>",
      desc = "Command Palette",
    },

    -- Example: Daily note
    {
      "<leader>od",
      "<cmd>ObsidianToday<cr>",
      desc = "Open today's note",
    },

    -- Example: Search in vault
    {
      "<leader>os",
      "<cmd>ObsidianSearch<cr>",
      desc = "Search vault",
    },
  },
}
