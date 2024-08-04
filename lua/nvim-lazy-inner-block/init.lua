local keys = { "{", "}", "(", ")", "[", "]", "<", ">", "'", '"', "`" }

local function map_keys(buffer)
	local map_opts = {
		remap = false,
		unique = true,
		buffer = buffer,
	}

	for _, key in ipairs(keys) do
		vim.keymap.set("o", key, "i" .. key, map_opts)
	end

	for _, key in ipairs(keys) do
		vim.keymap.set("x", key, "i" .. key, map_opts)
	end

	vim.keymap.set("n", ">>", ">>", map_opts)
	vim.keymap.set("n", "<<", "<<", map_opts)
end

local function setup(opts)
	opts = opts or {}
	map_keys(opts.bufnr)
end

return { setup = setup }
