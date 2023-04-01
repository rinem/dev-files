-- import nvim-treesitter plugin safely
local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
  return
end

-- configure treesitter
treesitter.setup({
  ensure_installed = { 
    "bash",
    "javascript",
    "json",
    "lua",
    "python",
    "typescript",
    "tsx",
    "html",
    "lua",
    "pug",
    "css",
    "yaml",
    "markdown",
    "markdown_inline",
    "pug",
    "prisma",
    "graphql",
    "go",
    "gitignore",
    "dockerfile",
    "sql",
    "vim",
  }, -- one of "all" or a list of languages
	ignore_install = { "phpdoc" }, -- List of parsers to ignore installing
	highlight = {
		enable = true, -- false will disable the whole extension
		disable = { "css" }, -- list of language that will be disabled
	},
	autopairs = {
		enable = true,
	},
	indent = { enable = true, disable = { "python", "css" } },
  -- auto install above language parsers
  auto_install = true,
})
