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


function M.focus_buffer_file()
    local buffers = vim.api.nvim_list_bufs()
    local target_buffer = nil

    -- Searching for buffer with any file extension (contains a dot in the name)
    for _, buf in ipairs(buffers) do
        local name = vim.api.nvim_buf_get_name(buf)
        if name:find("%.") then  -- This pattern matches any name containing a dot
            target_buffer = buf
            break  -- Switch to the first buffer that matches the criteria
        end
    end

    -- If the target buffer is found, switch to the window containing it
    if target_buffer then
        local windows = vim.api.nvim_list_wins()
        for _, win in ipairs(windows) do
            if vim.api.nvim_win_get_buf(win) == target_buffer then
                vim.api.nvim_set_current_win(win)
                return
            end
        end
    else
        print("File buffer not found")
    end
end


return M
