local api = vim.api

local function map_keys(bufnr)
    local keys = { '(', ')', '[', ']', '<', '>', "'", '"', '`' }

    for _, key in ipairs(keys) do
        if bufnr then
            api.nvim_buf_set_keymap(bufnr, 'o', key, 'i'..key, {})
        else
            api.nvim_set_keymap('o', key, 'i'..key, {})
        end
    end
end

local function setup(opts)
    opts = opts or {}
    map_keys(opts.bufnr)
end

return {
	setup = setup
}
