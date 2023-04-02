-- set colorscheme to nightfly with protected call
-- in case it isn't installed
local status, _ = pcall(vim.cmd, "colorscheme nightfly")

-- making nvim tree transparent
vim.cmd("autocmd Colorscheme * highlight NvimTreeNormal guibg=none guifg=#9da5b3")
if not status then
  print("Colorscheme not found!") -- print error if colorscheme not installed
  return
end
