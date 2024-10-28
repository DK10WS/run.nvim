local M = {}

M.run_code = function()
  local ft = vim.bo.filetype
  local cmd = ""

  if ft == "python" then
    cmd = "python " .. vim.fn.expand("%")
  elseif ft == "cpp" then
    cmd = "g++ " .. vim.fn.expand("%") .. " -o output && ./output"
  elseif ft == "c" then
    cmd = "gcc " .. vim.fn.expand("%") .. " -o output && ./output"
  elseif ft == "lua" then
    cmd = "lua " .. vim.fn.expand("%")
  else
    print("Filetype not supported!")
    return
  end

  vim.cmd("FloatermToggle")
  vim.cmd("FloatermSend " .. cmd)
end

return M
