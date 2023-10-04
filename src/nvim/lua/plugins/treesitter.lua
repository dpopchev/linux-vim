local TREESITTER_CONFIGS = {
    highlight = { enable = true },
    indent = { enable = true },
    ensure_installed = {
        -- commenting out as auto_install does not stop it for checking
        -- "bash",
        -- "json",
        -- "lua",
        -- "luadoc",
        -- "markdown",
        -- "markdown_inline",
        -- "python",
        -- "query",
        -- "regex",
        -- "vim",
        -- "vimdoc",
        -- "yaml",
    },
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

local TREESITTER_CONTEXT_VT_CONFIG = {
    disable_virtual_lines = false,
    min_rows = 10,
}

return {
    {'haringsrob/nvim_context_vt', dependencies = {TREESITTER}, config = TREESITTER_CONTEXT_VT_CONFIG },
    {'nvim-treesitter/nvim-treesitter-context', dependencies = {TREESITTER} },
}
