---@brief
---
--- https://github.com/Myriad-Dreamin/tinymist
---
--- `tinymist`, a Typst language server

---@type vim.lsp.Config
return {
  cmd = { "tinymist" },
  filetypes = { "typst" },

  -- New-style root detection (no util.root_pattern)
  root_markers = {
    "main.typ",
    "typst.toml",
    ".git",
  },

  settings = {
    tinymist = {
      -- Prefer project-wide analysis
      exportPdf = "onSave",

      -- You can toggle these as needed
      diagnostics = {
        enable = true,
      },

      formatting = {
        enable = true,
      },
    },
  },

  on_attach = function(client, bufnr)
    -- Sanity: tinymist *must* have a root
    if not client.config.root_dir then
      vim.notify(
        "Tinymist attached without a root directory — check root_markers",
        vim.log.levels.WARN
      )
    end

    -- Example: buffer-local helper command
    vim.api.nvim_buf_create_user_command(bufnr, "TypstExportPdf", function()
      client.request(
        "workspace/executeCommand",
        { command = "tinymist.exportPdf" },
        nil,
        bufnr
      )
    end, {
      desc = "Export Typst document to PDF",
    })
  end,
}

