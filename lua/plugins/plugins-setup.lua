local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	-- use {
	--     'nvim-lualine/lualine.nvim',
	--     requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	--     }
	use("nvim-lualine/lualine.nvim")
	use({
		"nvim-tree/nvim-tree.lua",
		requires = {
			"nvim-tree/nvim-web-devicons", -- optional
		},
	})
	use({
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	})
	use("nvim-treesitter/nvim-treesitter")
	use("folke/tokyonight.nvim")
	-- use 'Mofiqul/vscode.nvim'
	-- 自动补全
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("L3MON4D3/LuaSnip") -- snippets引擎，不装这个自动补全会出问题
	use("saadparwaiz1/cmp_luasnip")
	use("rafamadriz/friendly-snippets")

	use("mhartington/formatter.nvim") -- 格式化

	use("numToStr/Comment.nvim") -- gcc和gc注释
	use("windwp/nvim-autopairs") -- 自动补全括号
	use("p00f/clangd_extensions.nvim")
	-- use "akinsho/bufferline.nvim" -- buffer分割线
	use({ "akinsho/bufferline.nvim", tag = "*", requires = "nvim-tree/nvim-web-devicons" })
	use("lewis6991/gitsigns.nvim") -- 左则git提示
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.2", -- 文件检索
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
		require("packer").sync()
	end
end)
