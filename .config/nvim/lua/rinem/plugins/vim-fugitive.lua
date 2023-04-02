-- import fugitive plugin safely
local setup, fugitive = pcall(require, "fugitive")
if not setup then
  return
end

-- enable fugitive
fugitive.setup()
