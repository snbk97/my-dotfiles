local fn = vim.fn

-- Automatically install packer

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  })
  print("Installing packer close and reopen Neovim...")
  vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init({
  display = {
    open_fn = function()
      return require("packer.util").float({ border = "rounded" })
    end,
  },
})

return packer.startup(function(use)
  -- packer
  use 'wbthomason/packer.nvim'

  -- other plugins here
  use({ "glepnir/lspsaga.nvim" })
  use({ "nvim-lua/plenary.nvim" }) -- Useful lua functions used by lots of plugins
  use({ "JoosepAlviste/nvim-ts-context-commentstring" })
  use({ "kyazdani42/nvim-web-devicons" })
  use({ "kyazdani42/nvim-tree.lua" })
  use({ "mhinz/vim-sayonara" }) -- safe quit
  use({ "nvim-lualine/lualine.nvim" }) -- status line
  -- use({ "ahmedkhalf/project.nvim" })
  use({ "is0n/jaq-nvim" })
  use({ "lukas-reineke/indent-blankline.nvim" })
  use({ "goolord/alpha-nvim" }) -- startpage
  use("folke/which-key.nvim") -- keyconfig
  use({ "rcarriga/nvim-notify" }) -- notifications
  -- use({ "Shatur/neovim-session-manager" })

  -- benchmark
  use({ "lewis6991/impatient.nvim" }) -- fast load times
  use({ "dstein64/vim-startuptime" }) -- StartupTime

  -- IDE utils
  use({ "kylechui/nvim-surround", config = function()
    require("nvim-surround").setup()
  end
  }) -- word surround


  --[[ -- nvim nightly 0.8 required
  use { "smjonas/inc-rename.nvim",
    config = function()
      require("inc_rename").setup()
    end
  } -- better rename
  ]]
  use({ "RRethy/vim-illuminate" }) -- word highligh on hover in document
  use({ "ray-x/lsp_signature.nvim" })
  use({ "ntpeters/vim-better-whitespace" })
  use({ "akinsho/toggleterm.nvim" })
  use({ "numToStr/Comment.nvim" })
  use({ "windwp/nvim-autopairs" }) -- Autopairs, integrates with both cmp and treesitter
  use({ "Pocco81/auto-save.nvim" }) -- auto save

  -- buffers and tabs
  use({ "tiagovla/scope.nvim" })
  use({ "akinsho/bufferline.nvim" })

  -- colorschemes
  -- use {'dracula/vim', as = 'dracula'}
  use { 'Everblush/everblush.nvim', as = 'everblush' }
  use("sainnhe/everforest")
  use({ "folke/tokyonight.nvim" })
  use("lunarvim/darkplus.nvim")
  use({ "catppuccin/nvim", as = 'catppuccin' }) -- TODO: wrie config
  use("rose-pine/neovim") -- TODO: wrie config

  -- cmp plugins
  use({ "hrsh7th/nvim-cmp" }) -- The completion plugin
  use({ "hrsh7th/cmp-buffer" }) -- buffer completions
  use({ "hrsh7th/cmp-path" }) -- path completions
  use({ "saadparwaiz1/cmp_luasnip" }) -- snippet completions
  use({ "hrsh7th/cmp-nvim-lsp" })
  use({ "hrsh7th/cmp-nvim-lua" })
  use({ "ray-x/cmp-treesitter" })

  -- snippets
  use({ "L3MON4D3/LuaSnip" }) --snippet engine
  use({ "rafamadriz/friendly-snippets" }) -- a bunch of snippets to use
  use({ "onsails/lspkind.nvim" })


  -- LSP
  use 'neovim/nvim-lspconfig' -- enable LSP
  use 'williamboman/nvim-lsp-installer' -- LSP installer
  --  use({ "nvim-lua/lsp-status.nvim" }) -- LSP status bar integration
  use({ "j-hui/fidget.nvim" }) -- LSP status bar integration
  use({ "jose-elias-alvarez/null-ls.nvim" }) -- for formatters and linters
  use({ 'weilbith/nvim-code-action-menu', cmd = 'CodeActionMenu' }) -- LSP code action
  use({ "antoinemadec/FixCursorHold.nvim" })
  --   use({ 'kosayoda/nvim-lightbulb', requires = 'antoinemadec/FixCursorHold.nvim' }) -- lightbulb setup

  -- Telescope
  use({ "nvim-telescope/telescope.nvim" })

  -- Treesitter
  use 'nvim-treesitter/nvim-treesitter'

  -- Git
  use({ "lewis6991/gitsigns.nvim" })
  use({ "kdheepak/lazygit.nvim" })

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require('packer').sync()
  end
end
)
