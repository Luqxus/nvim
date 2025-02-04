return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
    		end
	},
    	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls", 
					"golangci_lint_ls",
					"gopls",
					"html",
					"jdtls",
					"java_language_server",
					"autotools_ls",
					"tailwindcss",
					"lemminx",
					"biome",
					"tsserver",
					"vtsls"
				}
			})
		end
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.golangci_lint_ls.setup({})
			lspconfig.gopls.setup({})
			lspconfig.rust_analyzer.setup({})
			lspconfig.tsserver.setup({})
			lspconfig.java_language_server.setup({})

			vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
			vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
		end
	}
}
