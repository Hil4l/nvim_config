require 'keymaps'
require 'options'

-- [[ Install `lazy.nvim` plugin manager ]]
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
	require 'plugins.minifiles',
    require 'plugins.rosepine',
    require 'plugins.treesitter',
    require 'plugins.telescope',
    require 'plugins.comment',
    require 'plugins.harpoon',
    require 'plugins.toggleterm',
    require 'plugins.lualine',
    require 'plugins.lsp',
    require 'plugins.leap',
})

-- TODO: add nvim-cmp fro auto completion
