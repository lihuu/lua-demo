-- Utils工具模块
local utils = {
	print_table = function(tab)
		for k, v in pairs(tab) do
			print(k, v)
		end
	end,
}

return utils
