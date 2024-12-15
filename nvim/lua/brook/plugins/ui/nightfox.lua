return {
	{
		"EdenEast/nightfox.nvim",
		priority = 1000, -- make sure to load this before all the other start plugins

		config = function()
			-- Set up nightfox options with transparency
			require("nightfox").setup({
				options = {
					transparent = true, -- Enable transparent background
				},
			})
			-- load the colorscheme here
			vim.cmd([[colorscheme carbonfox]]) -- Options: [nightfox, nordfox, dayfox, dawnfox, duskfox, terafox, carbonfox]
		end,
	},
}
