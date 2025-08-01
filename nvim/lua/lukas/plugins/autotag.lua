return {
	"windwp/nvim-ts-autotag",
	event = "InsertEnter", -- or "VeryLazy", "BufReadPre", etc., depending on when you want it to load
	dependencies = { "nvim-treesitter/nvim-treesitter" },
	config = function()
		require("nvim-ts-autotag").setup({
			opts = {
				enable_close = true,
				enable_rename = true,
				enable_close_on_slash = false,
			},
			per_filetype = {
				["html"] = {
					enable_close = false,
				},
			},
		})
	end,
}
