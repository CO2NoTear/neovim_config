local opt = vim.opt

-- Line number
opt.relativenumber = false
opt.number = true

-- Shift width
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = false
opt.autoindent = true

-- no wrap
opt.wrap = true

-- cursorline
opt.cursorline = true
opt.cursorcolumn = false

-- mous,e
opt.mouse:append("a")
opt.mousemoveevent = true

-- clipboard
opt.clipboard:append("unnamedplus")

-- new window pos
opt.splitright = true
opt.splitbelow = true

-- search
opt.ignorecase = true
opt.smartcase = true

-- appearance
opt.termguicolors = true
opt.signcolumn = "yes"

-- theme settings

-- IF TOKYONIGHT --

vim.cmd([[colorscheme tokyonight]])

require("tokyonight").setup({
	-- your configuration comes here
	-- or leave it empty to use the default settings
	style = "storm", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
	light_style = "day", -- The theme is used when the background is set to light
	transparent = false, -- Enable this to disable setting the background color
	terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
	styles = {
		-- Style to be applied to different syntax groups
		-- Value is any valid attr-list value for `:help nvim_set_hl`
		comments = { italic = true },
		keywords = { italic = true },
		functions = {},
		variables = {},
		-- Background styles. Can be "dark", "transparent" or "normal"
		sidebars = "dark", -- style for sidebars, see below
		floats = "dark", -- style for floating windows
	},
	sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
	day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
	hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
	dim_inactive = false, -- dims inactive windows
	lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold

	--- You can override specific color groups to use other groups or a hex color
	--- function will be called with a ColorScheme table
	---@param colors ColorScheme
	on_colors = function(colors) end,

	--- You can override specific highlights to use other groups or a hex color
	--- function will be called with a Highlights and ColorScheme table
	---@param highlights Highlights
	---@param colors ColorScheme
	on_highlights = function(highlights, colors) end,
})
-- lualine
require("lualine").setup({
	options = {
		-- ... your lualine config
		theme = "tokyonight",
		-- ... your lualine config
	},
})

-- -- IF VSCODE --
-- local c = require('vscode.colors').get_colors()
-- require('vscode').setup({
--     -- Alternatively set style in setup
--     -- style = 'light'
--
--     -- Enable transparent background
--     transparent = true,
--
--     -- Enable italic comment
--     italic_comments = true,
--
--     -- Disable nvim-tree background color
--     disable_nvimtree_bg = true,
--
--     -- Override colors (see ./lua/vscode/colors.lua)
--     color_overrides = {
--         vscLineNumber = '#FFFFFF',
--     },
--
--     -- Override highlight groups (see ./lua/vscode/theme.lua)
--     group_overrides = {
--         -- this supports the same val table as vim.api.nvim_set_hl
--         -- use colors from this colorscheme by requiring vscode.colors!
--         Cursor = { fg=c.vscDarkBlue, bg=c.vscLightGreen, bold=true },
--     }
-- })
-- require('vscode').load('dark')
-- vim.opt.termguicolors = true
-- require("bufferline").setup({
--     options = {
--         buffer_close_icon = "",
--         close_command = "bdelete %d",
--         close_icon = "",
--         indicator = {
--           style = "icon",
--           icon = " ",
--         },
--         left_trunc_marker = "",
--         modified_icon = "●",
--         offsets = { { filetype = "NvimTree", text = "EXPLORER", text_align = "center" } },
--         right_mouse_command = "bdelete! %d",
--         right_trunc_marker = "",
--         show_close_icon = false,
--         show_tab_indicators = true,
--         hover = {
--             enabled = true,
--             delay = 200,
--             reveal = {'close'}
--         }
--     },
--
--     highlights = {
--         fill = {
--             fg = { attribute = "fg", highlight = "Normal" },
--             bg = { attribute = "bg", highlight = "StatusLineNC" },
--         },
--         background = {
--             fg = { attribute = "fg", highlight = "Normal" },
--             bg = { attribute = "bg", highlight = "StatusLine" },
--         },
--         buffer_visible = {
--             fg = { attribute = "fg", highlight = "Normal" },
--             bg = { attribute = "bg", highlight = "Normal" },
--         },
--         buffer_selected = {
--             fg = { attribute = "fg", highlight = "Normal" },
--             bg = { attribute = "bg", highlight = "Normal" },
--         },
--         separator = {
--             fg = { attribute = "bg", highlight = "Normal" },
--             bg = { attribute = "bg", highlight = "StatusLine" },
--         },
--         separator_selected = {
--             fg = { attribute = "fg", highlight = "Special" },
--             bg = { attribute = "bg", highlight = "Normal" },
--         },
--         separator_visible = {
--             fg = { attribute = "fg", highlight = "Normal" },
--             bg = { attribute = "bg", highlight = "StatusLineNC" },
--         },
--         close_button = {
--             fg = { attribute = "fg", highlight = "Normal" },
--             bg = { attribute = "bg", highlight = "StatusLine" },
--         },
--         close_button_selected = {
--             fg = { attribute = "fg", highlight = "Normal" },
--             bg = { attribute = "bg", highlight = "Normal" },
--         },
--         close_button_visible = {
--             fg = { attribute = "fg", highlight = "Normal" },
--             bg = { attribute = "bg", highlight = "Normal" },
--         },
--     },
-- })
-- require('lualine').setup({
--     options = {
--         -- ...
--         theme = 'vscode',
--         -- ...
--     },
-- })
