---@type MappingsTable
local M = {}

M.disabled = {
	n = {
		["<leader>h"] = "",
		["<leader>v"] = "",
	},
}

M.general = {
	n = {
		[";"] = { ":", "enter command mode", opts = { nowait = true } },
	},
}

-- more keybinds!
M.telescope = {
	n = {
		["<leader>fd"] = { "<cmd> Telescope lsp_document_symbols <CR>", "Find document symbols" },
	},
}

M.gitsigns = {
	plugin = true,
	n = {
		["<leader>hs"] = {
			function()
				require("gitsigns").stage_hunk()
			end,
			"Stage hunk",
		},
		["<leader>hr"] = {
			function()
				require("gitsigns").reset_hunk()
			end,
			"Reset hunk",
		},
		["<leader>hp"] = {
			function()
				require("gitsigns").preview_hunk()
			end,
			"Preview hunk",
		},
		["<leader>hS"] = {
			function()
				require("gitsigns").stage_buffer()
			end,
			"Stage buffer",
		},
		["<leader>hU"] = {
			function()
				require("gitsigns").undo_stage_hunk()
			end,
      "Undo stage hunk"
		},
		["<leader>hR"] = {
			function()
				require("gitsigns").reset_buffer()
			end,
      "Reset buffer"
		},
		["<leader>hb"] = {
			function()
				require("gitsigns").blame_line({ full = true })
			end,
      "Blame line"
		},
		["<leader>tb"] = {
			function()
				require("gitsigns").toggle_current_line_blame()
			end,
      "Toggle current line blame"
		},
		["<leader>hd"] = {
			function()
				require("gitsigns").diffthis()
			end,
      "Diff this"
		},
		["<leader>hD"] = {
			function()
				require("gitsigns").diffthis("~")
			end,
      "Diff all"
		},
		["<leader>td"] = {
			function()
				require("gitsigns").toggle_deleted()
			end,
      "Toggle deleted"
		},
	},
	v = {
		["<leader>hs"] = {
			function()
				require("gitsigns").stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
			end,
      "Stage selected hunk"
		},
		["<leader>hr"] = {
			function()
				require("gitsigns").reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
			end,
      "Reset selected hunk"
		},
	},
}

M.comment = {
	plugin = true,

	-- toggle comment in both modes
	n = {
		["<leader>gc"] = {
			function()
				require("Comment.api").toggle.linewise.current()
			end,
			"Toggle comment",
		},
	},

	v = {
		["<leader>gc"] = {
			"<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
			"Toggle comment",
		},
	},
}

M.vim_tmux_navigator = {
	plugin = true,

	n = {
		["<C-l>"] = {
			"<cmd> TmuxNavigateRight <CR>",
			"TMUX Navigate Right",
		},

		["<C-h>"] = {
			"<cmd> TmuxNavigateLeft <CR>",
			"TMUX Navigate Left",
		},

		["<C-j>"] = {
			"<cmd> TmuxNavigateDown <CR>",
			"TMUX Navigate Down",
		},

		["<C-k>"] = {
			"<cmd> TmuxNavigateUp <CR>",
			"TMUX Navigate Up",
		},
	},

	i = {
		["<C-l>"] = {
			"<cmd> TmuxNavigateRight <CR>",
			"TMUX Navigate Right",
		},

		["<C-h>"] = {
			"<cmd> TmuxNavigateLeft <CR>",
			"TMUX Navigate Left",
		},

		["<C-j>"] = {
			"<cmd> TmuxNavigateDown <CR>",
			"TMUX Navigate Down",
		},

		["<C-k>"] = {
			"<cmd> TmuxNavigateUp <CR>",
			"TMUX Navigate Up",
		},
	},

	v = {
		["<C-l>"] = {
			"<cmd> TmuxNavigateRight <CR>",
			"TMUX Navigate Right",
		},

		["<C-h>"] = {
			"<cmd> TmuxNavigateLeft <CR>",
			"TMUX Navigate Left",
		},

		["<C-j>"] = {
			"<cmd> TmuxNavigateDown <CR>",
			"TMUX Navigate Down",
		},

		["<C-k>"] = {
			"<cmd> TmuxNavigateUp <CR>",
			"TMUX Navigate Up",
		},
	},
	--   Left-Mapping} :<C-U>TmuxNavigateLeft<cr>
	-- noremap <silent> {Down-Mapping} :<C-U>TmuxNavigateDown<cr>
	-- noremap <silent> {Up-Mapping} :<C-U>TmuxNavigateUp<cr>
	-- noremap <silent> {Right-Mapping} :<C-U><cr>
	-- noremap <silent> {Previous-Mapping} :<C-U>TmuxNavigatePrevious<cr>
}

return M
