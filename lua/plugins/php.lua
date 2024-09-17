return {
	"gbprod/phpactor.nvim",
	build = function()
		require("phpactor.handler.update")()
  end,
  { "gbprod/php-enhanced-treesitter.nvim" }
}
