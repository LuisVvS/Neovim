return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
        },
    config = function()
    vim.keymap.set("n", "<leader>e" ,":Neotree toggle left<CR>", {})
        require("neo-tree").setup({
            -- Outras configurações do Neo-tree, se necessário
            filesystem = {
                window = {
                    mappings = {
                        ["h"] = "close_node",
                        ["l"] = "open", -- Bindando a tecla 'l' para abrir arquivos
                    },
                },
            },
        })
    end
}
