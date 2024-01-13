local TREESITTER_CONFIGS = {
    highlight = { enable = true },
    indent = { enable = true },
    ensure_installed = { },
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "gnn",
            node_incremental = "gn]",
            node_decremental = "gn[",
            scope_incremental = false,
        },
    },
    auto_install = false,
    sync_install = false,
}

local function make_treesitter_config()
    require('nvim-treesitter.configs').setup(TREESITTER_CONFIGS)
end

local TREESITTER = {
    "nvim-treesitter/nvim-treesitter",
    config = make_treesitter_config
}

return {
    {'nvim-treesitter/nvim-treesitter-context', dependencies = {TREESITTER} },
}
