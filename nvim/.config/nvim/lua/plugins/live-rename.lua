return {
  "saecki/live-rename.nvim",
  keys = {
    {
      "<leader>cr",
      function()
        require("live-rename").rename()
      end,
      desc = "LSP Rename (live)",
    },
    -- handy extra: start in insert with empty text
    {
      "<leader>cR",
      function()
        require("live-rename").rename({ text = "", insert = true })
      end,
      desc = "LSP Rename (live, empty)",
    },
  },
}
