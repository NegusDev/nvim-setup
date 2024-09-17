-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.lazyvim_php_lsp = "intelephense"

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)


require('config.globals')
require('config.options')
require('config.keymaps')



local opts = {
	defaults = {
		lazy = false,


	},
	install = {
		colorscheme = {"catppuccin"},
	},
	rtp = {
      		reset = true, -- reset the runtime path to $VIMRUNTIME and your config directory
      		---@type string[]
      		paths = {}, -- add any custom paths here that you want to includes in the rtp
      		---@type string[] list any plugins you want to disable here
		disabled_plugins = {
        		"gzip",
        		"matchit",
        		"matchparen",
        		"netrwPlugin",
        		"tarPlugin",
        		"tohtml",
        		"tutor",
        		"zipPlugin",
      		},
    	},
	change_detection = {
    		enabled = true,
    		notify = true, 
  	},
}




require("lazy").setup('plugins')
require("nvim-tree").setup()
