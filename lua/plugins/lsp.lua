local function set_filetype(pattern, filetype)
  vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
    pattern = pattern,
    command = "set filetype=" .. filetype,
  })
end

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        docker_compose_language_service = {},
      },
      setup = {
        set_filetype({ "*compose*.yml" }, "yaml.docker-compose"),
      },
    },
  },
}
