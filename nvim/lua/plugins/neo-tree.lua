-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	cmd = "Neotree",
	keys = {
		{ "\\", ":Neotree toggle<CR>", desc = "Toggle NeoTree" },
	},
	config = function()
		require("neo-tree").setup({
			close_if_last_window = false, -- Close Neo-tree if it is the last window left in the tab
			popup_border_style = "rounded",
			enable_git_status = true,
			enable_diagnostics = false,
			open_files_do_not_replace_types = { "terminal", "trouble", "qf" },
			source_selector = {
				winbar = true,
				statusline = false,
			},
			default_component_configs = {
				document_symbols = {
					follow_cursor = true,
					follow_debugger = true,
					update_when_position_changes = true,
				},
			},
			window = {
				position = "left",
				width = 30,
				mapping_options = {
					noremap = true,
					nowait = true,
				},
				-- mappings = {
				-- ["<cr>"] = "open_tabnew", -- overwirte <cr> not reopen a new window
				-- ["<2-LeftMouse>"] = "open_tabnew",
				-- k},
			},
			filesystem = {
				filtered_items = {
					hide_dotfiles = false,
				},
				follow_current_file = {
					enabled = true, -- This will find and focus the file in the active buffer every time
				},
			},
		})
	end,
}
