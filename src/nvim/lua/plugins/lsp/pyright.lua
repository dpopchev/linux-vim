local M = {}

function M.setup(lspconfig, capabilities)
    lspconfig.pyright.setup({ capabilities = capabilities })
end

return M
