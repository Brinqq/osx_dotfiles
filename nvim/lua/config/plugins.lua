local fn = vim.fn
local installPath = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"

--install packer if not installed already
if fn.empty(fn.glob(installPath)) > 0 then
  PACKER_BOOTSTRAP = fn.system{
  "git",
  "clone",
  "--depth",
  "1",
  "https://github.com/wbthomason/packer.nvim",
  installPath,
  }
  print("installing Packer")
end
vim.cmd[[packadd packer.nvim]]

--initlize packer
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  print("Packer module not found")
  return
end

packer.init{

}

return require('packer').startup(function(use)

  -------plugins-----
  --packer-------------------
  use "wbthomason/packer.nvim"
	use "nvim-lua/popup.nvim"
  use "nvim-lua/plenary.nvim"
------------------------------
-- commit = "b0395c2",

  use{
    'nvim-telescope/telescope.nvim',
  }
  use "nvim-telescope/telescope-media-files.nvim"
  --cmp and snippets
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-cmdline"
  use "saadparwaiz1/cmp_luasnip"
  use "L3MON4D3/LuaSnip"
  use "rafamadriz/friendly-snippets"
  --lsp 
  use "neovim/nvim-lspconfig"

  --use "williamboman/nvim-lsp-installer"
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-nvim-lua"
  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"
  use "nvim-treesitter/nvim-treesitter"

  --QOF
  use "kyazdani42/nvim-tree.lua"
  use "kyazdani42/nvim-web-devicons"
  use "akinsho/toggleterm.nvim"
  use "nvim-lualine/lualine.nvim"
  use "windwp/nvim-autopairs"
  use "lewis6991/gitsigns.nvim"
  use 'numToStr/Comment.nvim'
  use 'ThePrimeagen/harpoon'
  use {'folke/trouble.nvim'}
  --Themes
  use "biscuit-colorscheme/nvim"
  use "srcery-colors/srcery-vim"
  use "ajmwagar/vim-deus"
  use "sainnhe/sonokai"
  use "ku1ik/vim-monokai"
  use "tomasr/molokai"
  use "sebasruiz09/fizz.nvim"
  use "ricardoraposo/gruvbox-minor.nvim"
  use "sainnhe/gruvbox-material"
  use "morhetz/gruvbox"
  use "xero/miasma.nvim"
  use "jalzn/altbox.nvim"
  use "luisiacc/gruvbox-baby"


  --optional
    use "ThePrimeagen/vim-be-good"

end)
