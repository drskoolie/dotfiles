local M = {}


function M.focus_buffer(target_name)
    local buffers = vim.api.nvim_list_bufs()  -- Get all buffers
    local target_buffer = nil

    -- Escape special characters for pattern matching
    local escaped_name = target_name:gsub("([^%w])", "%%%1")

    -- Iterate over buffers to find one with the target name
    for _, buf in ipairs(buffers) do
        local name = vim.api.nvim_buf_get_name(buf)
        if name:find(escaped_name) then
            target_buffer = buf
            break  -- Stop searching once found
        end
    end

    -- If the target buffer was found, switch to it
    if target_buffer then
        -- Find the window that contains the target buffer
        local windows = vim.api.nvim_list_wins()
        for _, win in ipairs(windows) do
            if vim.api.nvim_win_get_buf(win) == target_buffer then
                -- Set the focus to the window containing the target buffer
                vim.api.nvim_set_current_win(win)
                return
            end
        end
    else
        print(target_name .. " buffer not found")
    end
end

return M
