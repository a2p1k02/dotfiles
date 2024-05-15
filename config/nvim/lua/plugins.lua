return require('packer').startup(function()

  use 'wbthomason/packer.nvim'

  use 'neovim/nvim-lspconfig'
  
  use 'hrsh7th/nvim-cmp'

  use 'hrsh7th/cmp-nvim-lsp' 

  use 'kyazdani42/nvim-web-devicons'

  use { "catppuccin/nvim", as = "catppuccin" }

  --use 'ful1e5/onedark.nvim'
    
  --use 'rmehri01/onenord.nvim'

  --use 'a2p1k02/dark-onenord'

  use 'windwp/nvim-autopairs'

  use { 'nvim-telescope/telescope.nvim', requires = { {'nvim-lua/plenary.nvim'} } }

  use { 'nvim-lualine/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons', opt = true} }

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

end)
