
-- [[ plugins.lua ]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- [[ UI ]]

  use {'nvim-treesitter/nvim-treesitter'}

  use {
    'ishan9299/nvim-solarized-lua'
  }

  use {                                              
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons'
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
    'lewis6991/gitsigns.nvim'
  }

  use {
    'nvim-orgmode/orgmode',
    config = function()
      require('orgmode').setup{}
    end
  }


  use {
    'akinsho/bufferline.nvim',
    tag = 'v2.*',
    requires = 'kyazdani42/nvim-web-devicons'
  }

end)

