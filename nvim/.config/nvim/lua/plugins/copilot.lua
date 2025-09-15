return {
  "zbirenbaum/copilot.lua",
  event = "VeryLazy",
  keys = {
    {
      "<leader>at",
      function()
        local client = require("copilot.client")
        if client.is_disabled() then
          require("copilot.command").enable()
          vim.notify("Copilot: Enabled", vim.log.levels.INFO)
        else
          require("copilot.command").disable()
          vim.notify("Copilot: Disabled", vim.log.levels.INFO)
        end
      end,
      desc = "Toggle Copilot",
    },
  },
  config = function()
    require("copilot").setup({
      suggestion = { enabled = true },
      panel = { enabled = false },
    })
    vim.defer_fn(function()
      require("copilot.command").disable()
    end, 10)
  end,
  opts = {
    filetypes = {
      markdown = true,
      help = true,
    },
  },
}
