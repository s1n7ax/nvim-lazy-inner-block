local api = vim.api

local function map_keys(bufnr)
    local keys = {'{', '}', '(', ')', '[', ']', '<', '>', "'", '"', '`'}
    local operators = { 'd', 'y', 'v', 'c' }

    for _, key in ipairs(keys) do
        for _, operator in ipairs(operators) do

            local keymap = operator .. key
            local action = operator .. 'i' .. key

            if bufnr then
                api.nvim_buf_set_keymap(bufnr, 'n', keymap, action, {})
            else
                api.nvim_set_keymap('n', keymap, action, {})
            end
        end
    end
end

local function setup(opts)
    opts = opts or {}
    map_keys(opts.bufnr)
end

return {setup = setup}
