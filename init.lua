vim.g.mapleader = " "
vim.g.maplocalleader = " "


local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system {
    "git",
    "clone",
    "--filter=blob:none",
    "--branch=stable",
    lazyrepo,
    lazypath,
  }
end

-- Add lazy to the 'runtimepaths', this allows us to 'require' it.
-- @diagnostic disable-next=line: undefined-field
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
--  { import = "plugin" },
  { import = 'custom.plugins' },
--  { change_detection = { notify = false, }, },
})

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
