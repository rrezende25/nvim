local lsps = {};

local function concatenate_tables(table1, table2)
	local result = {}
	for _, v in ipairs(table1) do
		table.insert(result, v)
	end
	for _, v in ipairs(table2) do
		table.insert(result, v)
	end
	return result
end

lsps.list = {
	"clangd",
	"rust_analyzer",
	"pyright",
	"ts_ls",
	"quick_lint_js",
	"bashls",
	"lua_ls",
	"cssls",
	"emmet_ls",
	"cssmodules_ls",
	"html",
	"jdtls",
	"jsonls",
	"intelephense",
	"tailwindcss",
	"angularls",
	"omnisharp",
	"marksman",
	"gopls",
	"asm_lsp",
	"texlab"
}

lsps.linters_formatters = {
	"black",
	"flake8",
	"ruff",
	"php-cs-fixer",
	"mdformat",
	"beautysh",
	"prettier",
	"sql-formatter",
	"latexindent"
}

lsps.all = concatenate_tables(lsps.list, lsps.linters_formatters)

local pid = vim.fn.getpid()

function lsps.configs(lspConfig, lsp, capabilities, on_attach)
	return false
end

return lsps
