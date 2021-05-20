-- if vim.fn.has("mac") == 1 then
-- 	JAVA_LS_EXECUTABLE = 'java-mac-ls'
-- elseif vim.fn.has("unix") == 1 then
-- 	JAVA_LS_EXECUTABLE = 'java-linux-ls'
-- else
-- 	print("Unsupported system")
-- end

local bundles = {
	vim.fn.glob(
	"~/repos/java-debug/com.microsoft.java.debug.plugin/target/com.microsoft.java.debug.plugin-*.jar")
};
vim.list_extend(bundles, vim.split(vim.fn.glob("~/vscode-java-test/servers/*.jar"), "\n"))

-- config['init_options'] = {
-- 	bundles = bundles
-- }

local on_attach = function(client, bufr)
	require('jdtls').setup_dap()
	require'lsp'.common_on_attach(client, bufr)
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true


-- require('jdtls').start_or_attach({
-- 	on_attach = on_attach,
-- 	cmd = {JAVA_LS_EXECUTABLE},
-- 	root_dir = require('jdtls.setup').find_root({'build.gradle', 'pom.xml', '.git'}),
-- 	init_options = {bundles = bundles}
-- })



require('jdtls').start_or_attach({
	on_attach = on_attach,
	cmd = {'java-linux-ls'},
	root_dir = require('jdtls.setup').find_root({'build.gradle','pom.xml','.git'}),
	init_options = {bundles = bundles},
	capabilities = capabilities
})


-- require('jdtls').test_class()
-- require('jdtls').test_nearest_method()
