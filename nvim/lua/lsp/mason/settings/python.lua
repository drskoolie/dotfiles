local lspconfig = require('lspconfig')

local python_root_pattern = lspconfig.util.root_pattern(".git", "setup.py", "pyproject.toml", ".ruff-lsp.toml", ".")

lspconfig.pyright.setup{
	root_dir = python_root_pattern,
    settings = {
        python = {
            analysis = {
                autoSearchPaths = true,
                diagnosticMode = "openFilesOnly",
                useLibraryCodeForTypes = true,
                typeCheckingMode = "off",
                autoImportCompletions = false,
                diagnosticSeverityOverrides = {
                    reportGeneralTypeIssues = "none",
                    reportMissingImports = "none",
                    reportMissingModuleSource = "none",
                    reportMissingTypeStubs = "none",
                    reportOptionalMemberAccess = "none",
                    reportOptionalSubscript = "none",
                    reportOptionalCall = "none",
                    reportOptionalIterable = "none",
                    reportOptionalContextManager = "none",
                    reportOptionalOperand = "none",
                    reportUntypedBaseClass = "none",
                    reportUntypedClassDecorator = "none",
                    reportUntypedFunctionDecorator = "none",
                    reportMissingParamType = "none",
                    reportMissingReturnType = "none",
                    reportMissingTypeArgument = "none",
                    reportUnnecessaryIsInstance = "none",
                    reportUnnecessaryCast = "none",
                    reportAssertAlwaysTrue = "none",
                    reportSelfClsParameterName = "none",
                    reportImplicitStringConcatenation = "none",
                    reportUnusedImport = "none",
                    reportUnusedClass = "none",
                    reportUnusedFunction = "none",
                    reportUnusedVariable = "none",
                    -- Add other diagnostics you want to override here
                },
                -- Additional settings if needed
            },
        },
    },
}

lspconfig.ruff_lsp.setup{
	cmd = {"ruff-lsp"},
	root_dir = python_root_pattern,
}
