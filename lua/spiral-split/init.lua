local config = require("spiral-split.config")

local M = {}

-- @return boolean
function M.is_vertical()
	local width = vim.api.nvim_win_get_width(0)
	local height = vim.api.nvim_win_get_height(0)
	return (width * config.config.width_weight) > (height * config.config.height_weight)
end

-- @return boolean
function M.is_horizontal()
	return not M.is_vertical()
end

-- @return nil
function M.split()
	if M.is_vertical() then
		vim.cmd("vsplit")
	else
		vim.cmd("split")
	end
end

function M.setup(user_config)
	config.set(user_config)
end

return M
