return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  enabled = false,
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      filetypes = {
        yaml = true,
      },
    })
  end,
}
