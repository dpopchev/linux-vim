local M = {}

function M.setup(lspconfig, capabilities)
    lspconfig.pylsp.setup({ capabilities = capabilities })
end

return M
