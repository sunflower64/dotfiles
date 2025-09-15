return {
  {
    "dnlhc/glance.nvim",
    event = "LspAttach",
    config = function()
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local bufnr = args.buf
          local map = function(lhs, rhs, desc)
            vim.keymap.set("n", lhs, rhs, { buffer = bufnr, desc = desc })
          end
          map("gD", "<CMD>Glance definitions<CR>", "Glance: Definitions")
          map("gR", "<CMD>Glance references<CR>", "Glance: References")
          map("gY", "<CMD>Glance type_definitions<CR>", "Glance: Type Definitions")
          map("gM", "<CMD>Glance implementations<CR>", "Glance: Implementations")
        end,
      })
    end,
  },
}
