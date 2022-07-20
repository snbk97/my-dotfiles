local ok, nvimTree = pcall(require, "nvim-tree")
if not ok then
	return
end


return nvimTree.setup {
disable_netrw = true,
hijack_netrw = true,
	view = {
		width = 40,
		height = 30,
		side = "left",
	},
filters = {
	custom = { ".git" },
},
}
