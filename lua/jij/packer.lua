-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use { "ellisonleao/gruvbox.nvim" }
	--[[
	use({ 'rose-pine/neovim', as = 'rose-pine', 
	config = function()
		vim.cmd('colorscheme rose-pine')
	end
})
--]]
use ('nvim-treesitter/nvim-treesitter', {run= ':TSUpdate'})
use {
	"williamboman/nvim-lsp-installer",
	"neovim/nvim-lspconfig",
}
use ('hrsh7th/cmp-path')
use ('hrsh7th/cmp-nvim-lsp')
use ('hrsh7th/cmp-buffer')
use ('saadparwaiz1/cmp_luasnip')
use ('rafamadriz/friendly-snippets')
use ('nvim-tree/nvim-tree.lua')
use {
	'VonHeikemen/lsp-zero.nvim',
	branch = 'v2.x',
	requires = {
		-- LSP Support
		{'neovim/nvim-lspconfig'},             -- Required
	{'williamboman/mason-lspconfig.nvim'}, -- Optional

	    -- Autocompletion
	    {'hrsh7th/nvim-cmp'},     -- Required
	    {'hrsh7th/cmp-nvim-lsp'}, -- Required
	    {'L3MON4D3/LuaSnip'},     -- Required
	  }
	}

end)
