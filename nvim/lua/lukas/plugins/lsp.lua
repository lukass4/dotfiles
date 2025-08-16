return {
	{
		"williamboman/mason.nvim",
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
			"WhoIsSethDaniel/mason-tool-installer.nvim",
		},
		config = function()
			require("mason").setup()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"ts_ls",
					"html",
					"cssls",
					"tailwindcss",
					"svelte",
					"lua_ls",
					"emmet_ls",
					"prismals",
					"pyright",
					"bashls",
				},
			})
		end,
	},
	{

		"neovim/nvim-lspconfig",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = { "hrsh7th/cmp-nvim-lsp" },
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			vim.api.nvim_create_autocmd("LspAttach", {
				group = vim.api.nvim_create_augroup("UserLspConfig", {}),
				callback = function(ev)
					local keymap = vim.keymap
					local opts = { buffer = bufnr, silent = true }

					opts.desc = "Show LSP references"
					keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts)

					opts.desc = "Go to declaratior"
					keymap.set("n", "gD", vim.lsp.buf.declaration, opts)

					opts.desc = "Show LSP definitions"
					keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts)

					opts.desc = "See available code actions"
					keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)

					opts.desc = "Smart rename"
					keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)

					opts.desc = "Show buffer diagnostics"
					keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts)

					opts.desc = "Show line diagnostics"
					keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts)

					opts.desc = "Show documentation for what is under cursor"
					keymap.set("n", "K", vim.lsp.buf.hover, opts)

					opts.desc = "Restart LSP"
					keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts)
				end,
			})

			vim.lsp.config("*", {
				capabilities = capabilities,
				on_attach = default_on_attach,
			})

			vim.lsp.config("emmet_ls", {
				filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less", "svelte" },
			})

			vim.lsp.config("lua_ls", {
				settings = {
					Lua = { workspace = { library = vim.api.nvim_get_runtime_file("", true) } },
				},
			})
		end,
	},
}
