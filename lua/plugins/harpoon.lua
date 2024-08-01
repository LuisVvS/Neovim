return {
    "ThePrimeagen/harpoon",
    config = function()
        vim.keymap.set("n", "<s-m>", "<cmd>lua require('harpoon.mark').add_file()<cr>", {})
        vim.keymap.set(
            "n",
            "<TAB>",
            "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>",
            { desc = "Harpoon Toggle Menu" }
        )

    end,
}
