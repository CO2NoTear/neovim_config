vim.opt.termguicolors = true
require("bufferline").setup({
	options = {
		-- mode = "tabs",
		-- 使用 nvim 内置lsp
		diagnostics = "nvim_lsp",
		-- 左侧让出 nvim-tree 的位置
		offsets = {
			{
				filetype = "NvimTree",
				text = "File Explorer",
				highlight = "Directory",
				text_align = "center",
				separator = true,
			},
		},
		separator_style = "slant",
		-- hover = {
		--     enabled = true,
		--     delay = 200,
		--     reveal = {'close'}
		-- },
	},
})
-- pick
vim.keymap.set("n", "gb", ":BufferLinePick<CR>", { desc = "silent" })
vim.keymap.set("n", "gD", ":BufferLinePickClose<CR>", { desc = "silent" })
