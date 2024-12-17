return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"meuter/lualine-so-fancy.nvim",
	},
	-- enabled = false,
	-- lazy = false,
	-- event = { "BufReadPost", "BufNewFile", "VeryLazy" },
	config = function()
		local lazy_status = require("lazy.status")
		require("lualine").setup({
			options = {
				theme = "auto",
				globalstatus = false,
				icons_enabled = true,
				component_separators = { left = "|", right = "|" },
				section_separators = { left = "", right = "" },
				disabled_filetypes = {
					statusline = {
						"alfa-nvim",
						"help",
						"neo-tree",
						"Trouble",
						"spectre_panel",
						"toggleterm",
					},
					winbar = {},
				},
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = {
					"fancy_branch",
					"fancy_diff",
				},
				lualine_c = {
					{
						"filename",
						path = 1, -- 2 for full path
						symbols = {
							modified = "  ",
							-- readonly = "  ",
							-- unnamed = "  ",
						},
					},
					{
						"fancy_diagnostics",
						sources = { "nvim_lsp" },
						symbols = { error = " ", warn = " ", info = " " },
					},
					{ "fancy_searchcount" },
				},
				lualine_x = {
					{
						lazy_status.updates,
						cond = lazy_status.has_updates,
					},
					"filetype",
					--	"fileformat",
					--	"progress",
				},
				lualine_y = { "location" },
				lualine_z = {},
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = { "filename" },
				-- lualine_x = { "location" },
				lualine_y = {},
				lualine_z = {},
			},
			tabline = {},
			extensions = { "neo-tree", "lazy" },
		})
	end,
}
