return {
	{
		"tpope/vim-fugitive",
	},
	"lewis6991/gitsigns.nvim",
	requires = { "nvim-lua/plenary.nvim" },
	config = function()
		require("gitsigns").setup({
			current_line_blame = true,
			current_line_blame_opts = {
				delay = 200,
			},
		})
		vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
	end,
}
