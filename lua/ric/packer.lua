-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Add other plugins here
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.6',  -- Corrected tag value
   -- branch = 'main',  -- Corrected branch value if necessary
    requires = { 'nvim-lua/plenary.nvim' }  -- Corrected syntax for requires
  }

  use {
    'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
      vim.cmd('colorscheme rose-pine')  -- Corrected colorscheme name
    end
  }
  
  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
end)

