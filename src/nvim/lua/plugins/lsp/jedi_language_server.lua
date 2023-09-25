local M = {}

local SETTINGS = { }

function M.setup(lspconfig, capabilities)
    lspconfig.jedi_language_server.setup({capabilities=capabilities, settings = SETTINGS})
end

return M
