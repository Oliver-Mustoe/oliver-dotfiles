-- Lazy.nvim setup
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
vim.g.mapleader = " "
-- Load plugins
require("lazy").setup {
{
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000000000,
  opts = {
	flavour = "frappe",
    transparent_background = true
  }
},
{
"nvim-treesitter/nvim-treesitter",
 build = ":TSUpdate",
 config = function()
   require("nvim-treesitter.configs").setup {
     ensure_installed = { "nix", "lua" },
     highlight = { enable = true, }
 }
 end
}
}

-- Colorscheme
vim.cmd.colorscheme "catppuccin"

-- Line numbers
vim.wo.relativenumber = true

-- Set tab spacing
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
