
local util={}

function util.isEmpty(value)
    return not (value and #value>0)
end

return util

