return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use 'vim-ctrlspace/vim-ctrlspace'

  use {'nvim-treesitter/nvim-treesitter'}

  use 'neovim/nvim-lspconfig'

use {
  'junegunn/fzf',
  run = './install --bin'
}
use {
  'ibhagwan/fzf-lua',
  requires = { 'kyazdani42/nvim-web-devicons' }
}

  use 'jose-elias-alvarez/null-ls.nvim'

  use 'MunifTanjim/prettier.nvim'

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

  use 'nvim-telescope/telescope-file-browser.nvim'

  use {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'make'
  }

  use 'tpope/vim-fugitive'

  use 'shumphrey/fugitive-gitlab.vim'

  use 'lewis6991/gitsigns.nvim'

  use {
    'nvim-orgmode/orgmode'
  }

  use 'karb94/neoscroll.nvim'

  use 'cappyzawa/trim.nvim'

  use {
    '0x100101/lab.nvim',
    run = 'cd js && npm ci',
    requires = 'nvim-lua/plenary.nvim'
  }

  use 'numToStr/Comment.nvim'

  use 'phaazon/hop.nvim'

  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
})

end)
