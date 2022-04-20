local prototype = {x = 0, y = 0, width = 100, height = 100}
local mt = {}

local function new(o)
  setmetatable(o, mt)
  return o
end

mt.__index = function(_, key)
  return prototype[key]
end

local w = new({x = 10, y = 20})
print(w.width)
