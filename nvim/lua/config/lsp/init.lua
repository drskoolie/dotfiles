 vim.lsp.start({
	name = 'pyright',
	cmd = {'pyright'},
	root_dir = vim.fs.dirname(vim.fs.find({'pyproject.toml', 'setup.py'}, { upward = true })[1]),
 })
