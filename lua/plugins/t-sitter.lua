return {
	'nvim-treesitter/nvim-treesitter', 
	build = ':TSUpdate',
	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			ensure_installed = { "lua", "javascript", "typescript", "json", "css", "html" },
			auto_install = true,
			sync_install = false,
			ignore_installe = {},
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
