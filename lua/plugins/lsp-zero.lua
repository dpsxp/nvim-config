return {
	{ 
		'VonHeikemen/lsp-zero.nvim',        
		branch = 'v3.x',
		config = function () 
			local lsp_zero = require('lsp-zero')

			lsp_zero.on_attach(function(client, bufnr)
				-- see :help lsp-zero-keybindings
				-- to learn the available actions
				lsp_zero.default_keymaps({ buffer = bufnr })
			end)

			require('mason').setup({})
			require('mason-lspconfig').setup({
				handlers = {
					lsp_zero.default_setup,
				},

				ensure_installed = { "lua_ls", "eslint", "tsserver" },
			})
		end
	},
	{ "folke/neodev.nvim",                opts = {} },
	{ 'williamboman/mason.nvim' },

	{ 
		'williamboman/mason-lspconfig.nvim',
	},

	{ 'neovim/nvim-lspconfig' },
	{ 'hrsh7th/cmp-nvim-lsp' },
	{ 'hrsh7th/nvim-cmp' },
	{ 'L3MON4D3/LuaSnip' }
}

