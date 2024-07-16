local function open_nvim_tree(data)
  -- buffer is a directory
  local directory = vim.fn.isdirectory(data.file) == 1

  if not directory then
    return
  end

  -- change to the directory
  vim.cmd.cd(data.file)

  -- open the tree
  require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

-- nvim-tree is also there in modified buffers so this function filter it out
local modifiedBufs = function(bufs)
  local t = 0
  for k, v in pairs(bufs) do
    if v.name:match("NvimTree_") == nil then
      t = t + 1
    end
  end
  return t
end

vim.api.nvim_create_autocmd("BufEnter", {
    nested = true,
    callback = function()
  if
    #vim.api.nvim_list_wins() == 1
    and vim.api.nvim_buf_get_name(0):match("NvimTree_") ~= nil
    and modifiedBufs(vim.fn.getbufinfo({ bufmodified = 1 })) == 0
  then
    vim.cmd("quit")
  end
    end
})
