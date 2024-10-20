-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"
local nvlsp = require "nvchad.configs.lspconfig"

local on_attach = function(client, bufnr)
    local bufopts = { noremap = true, silent = true, buffer = bufnr }
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)
    vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, bufopts)
    -- Add any other keybindings you want for LSP here
end

-- Setup servers
-- Bash LSP
lspconfig.bashls.setup {
    on_attach = on_attach,
}

-- Pyright for Python
lspconfig.pyright.setup {
    on_attach = on_attach,
}

-- Gopls for Go
lspconfig.gopls.setup {
    on_attach = on_attach,
}

-- Lua Language Server
lspconfig.lua_ls.setup {
    on_attach = on_attach,
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" }, -- Prevent 'undefined global' warnings for Neovim Lua API
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
            },
        },
    },
}

-- Rust Analyzer for Rust
lspconfig.rust_analyzer.setup {
    on_attach = on_attach,
}

-- YAML Analyzer for Rust
lspconfig.yamlls.setup {
    on_attach = on_attach,
}

lspconfig.jqls.setup {
    on_attach = on_attach,
}

lspconfig.awk_ls.setup {
    on_attach = on_attach,
}

lspconfig.bufls.setup {
    on_attach = on_attach,
}

lspconfig.bzl.setup {
    on_attach = on_attach,
}

-- For debugging tools like Delve (Go) and Bash-Debug, you'd need dap (debugger support) configured.
