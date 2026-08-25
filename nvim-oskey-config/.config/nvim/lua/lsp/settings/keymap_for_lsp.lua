-- settings/on_attach_keymap_for_lsp.lua
local M = {}

function M.on_attach(client, bufnr)
    -- Définir les keymaps LSP
    local bufmap = function(mode, lhs, rhs, opts)
        opts = opts or {}
        opts.buffer = bufnr
        vim.keymap.set(mode, lhs, rhs, opts)
    end

    bufmap("n", "gd", vim.lsp.buf.definition, { desc = "Aller à la définition" })
    bufmap("n", "gD", vim.lsp.buf.declaration, { desc = "Aller à la déclaration" })
    bufmap("n", "gi", vim.lsp.buf.implementation, { desc = "Aller à l’implémentation" })
    bufmap("n", "<leader>fr", vim.lsp.buf.references, { desc = "Voir les références" })
    bufmap("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Renommer symbole" })
    bufmap("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Action de code" })
    bufmap("n", "K", vim.lsp.buf.hover, { desc = "Afficher la doc" })
    bufmap("n", "]d", function()
        vim.diagnostic.jump({ count = 1, float = true })
    end, { desc = "Diagnostic suivant" })
    bufmap("n", "[d", function()
        vim.diagnostic.jump({ count = -1, float = true })
    end, { desc = "Diagnostic précédent" })
    bufmap("n", "<leader>d", vim.diagnostic.open_float, { desc = "Afficher diags" })
    bufmap("n", "<leader>fe", vim.diagnostic.setloclist, { desc = "Liste rapide local diagnostics" })
    bufmap("n", "<leader>fE", vim.diagnostic.setqflist, { desc = "Liste rapide global diagnostics" })
    -- Supprime le formating de ts_ls pour que seul es-lint formatte donc a enlever si jamais on veu pas de es-lint comme formater
    if client.name == "ts_ls" then
        client.server_capabilities.documentFormattingProvider = false
        client.server_capabilities.documentRangeFormattingProvider = false
    end
    -- Activer le formatage par défaut pour ce buffer
    vim.b[bufnr].lsp_formatting_enabled = true
    -- Autocmd qui formate uniquement si la variable est à true
    vim.api.nvim_create_autocmd("BufWritePre", {
        buffer = bufnr,
        callback = function()
            if not vim.b[bufnr].lsp_formatting_enabled then
                return
            end
            vim.lsp.buf.format({ bufnr = bufnr })
        end,
    })
    -- Commande pour activer/désactiver le formatage sur le buffer courant
    vim.api.nvim_buf_create_user_command(bufnr, "FormatToggle", function()
        vim.b[bufnr].lsp_formatting_enabled = not vim.b[bufnr].lsp_formatting_enabled
        local status = vim.b[bufnr].lsp_formatting_enabled and "activate" or "disable"
        vim.notify("Auto Format " .. status .. " for this buffer", vim.log.levels.INFO)
    end, { desc = "Activate/Disable the Auto-format" })

    -- Keymap pour toggle
    bufmap("n", "<leader>tf", ":FormatToggle<CR>", { desc = "Toggle formatage LSP" })
end

return M
