require("dap.ext.vscode").load_launchjs_json5(nil, {
  python = { "python" },
})

return {
  "linux-cultist/venv-selector.nvim",
  branch = nil,
  config = function()
    require("venv-selector").setup()
  end,
}
