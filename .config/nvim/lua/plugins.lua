return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use {'nvim-treesitter/nvim-treesitter'}

  use 'dhruvasagar/vim-table-mode'

  use 'neovim/nvim-lspconfig'

  use {
    'n0v1c3/vira',
    run = './install.sh'
  }

use {
  'junegunn/fzf',
  run = './install --bin'
}

use {
  'ibhagwan/fzf-lua',
  requires = 'kyazdani42/nvim-web-devicons'
}

  use 'jose-elias-alvarez/null-ls.nvim'

  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  use 'MunifTanjim/prettier.nvim'

  use {
    'ishan9299/nvim-solarized-lua'
  }
  use 'Tsuzat/NeoSolarized.nvim'

  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons'
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = 'nvim-lua/plenary.nvim'
  }

  use 'nvim-telescope/telescope-file-browser.nvim'

  use {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'make'
  }

  use 'tpope/vim-fugitive'

  use 'shumphrey/fugitive-gitlab.vim'

  use {
    'lewis6991/gitsigns.nvim',
    tag = 'v0.8.1',
  }

  use {
    'nvim-orgmode/orgmode',
    tag = '0.3.4',
  }

  use 'karb94/neoscroll.nvim'

  use {
    'chipsenkbeil/org-roam.nvim',
    tag = '0.1.0',
    requires = {
      {
        'nvim-orgmode/orgmode',
        tag = '0.3.4',
      },
    }
  }

  use 'cappyzawa/trim.nvim'

  use {
    '0x100101/lab.nvim',
    run = 'cd js && npm ci',
    requires = 'nvim-lua/plenary.nvim'
  }

  use 'tidalcycles/vim-tidal'

  use 'numToStr/Comment.nvim'

  use 'phaazon/hop.nvim'

  use 'diepm/vim-rest-console'

  use({
    'iamcco/markdown-preview.nvim',
    run = function() vim.fn["mkdp#util#install"]() end,
})

use {
    'glacambre/firenvim',
    run = function() vim.fn['firenvim#install'](0) end
}

end)
