require("mason").setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
		PATH = "append",
	},
})
require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls", "rust_analyzer", "clangd", "pylsp", "pylsp" },
})

require("mason-lspconfig").setup_handlers({
	-- The first entry (without a key) will be the default handler
	-- and will be called for each installed server that doesn't have
	-- a dedicated handler.
	function(server_name) -- default handler (optional)
		require("lspconfig")[server_name].setup({})
	end,
	-- Next, you can provide a dedicated handler for specific servers.
	-- For example, a handler override for the `rust_analyzer`:
	["rust_analyzer"] = function()
		-- require("rust-tools").setup({})
	end,
	["clangd"] = function()
		require("lspconfig").clangd.setup({
			on_attach = function()
				require("clangd_ext")
				require("clangd_extensions.inlay_hints").setup_autocmd()
				require("clangd_extensions.inlay_hints").set_inlay_hints()
			end,
		})
	end,
})

-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set("n", "<space>e", vim.diagnostic.open_float)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist)
