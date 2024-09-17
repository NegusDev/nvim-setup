return {
	"catppuccin/nvim",
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd("colorscheme catppuccin")
    require("catppuccin").setup({
                                no_italic = true,
                                term_colors = true,
                                tranparent_background = false,
                                styles = {
                                        comments = {},
                                        conditionals = {},
                                        loops = {},
                                        functions = {},
                                        keywords = {},
                                        strings = {},
                                        variables = {},
                                        numbers = {},
                                        booleans = {},
                                        properties = {},
                                        types = {},
                                },
                                color_overrides = {
                                        mocha = {
                                                base = "#000000",
                                                mantle = "#000000",
                                                crust = "#000000",
                                        },
                                },
                                integrations = {
                                        dropbar = {
                                                enabled = true,
                                                color_mode = true,
                                        },
                                },

              })

		
	end

}
