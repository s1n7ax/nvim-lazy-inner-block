local function map_keys(bufnr)
	local keys = { "{", "}", "(", ")", "[", "]", "<", ">", "'", '"', "`" }
	local keymap_opt = { noremap = true }

	for _, key in ipairs(keys) do
		local action = "i" .. key

		if bufnr then
			vim.api.nvim_buf_set_keymap(bufnr, "o", key, action, keymap_opt)
		else
			vim.api.nvim_set_keymap("o", key, action, keymap_opt)
		end
	end
end

local function setup(opts)
	opts = opts or {}
	map_keys(opts.bufnr)
end

return { setup = setup }
