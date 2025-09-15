return {
  "akinsho/toggleterm.nvim",
  keys = {
    { "<C-t>", "<cmd>ToggleTerm<cr>", mode = { "n", "t" }, desc = "Toggle Terminal" },
  },
  opts = {
    direction = "float",
    start_in_insert = true,
    close_on_exit = true,
  },
}
