-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.clipboard = "unnamedplus"
vim.opt.termguicolors = true
vim.opt.laststatus = 3

vim.g.dbs = {
  kater_local = os.getenv("KATER_LOCAL_DB_URL"),
}
