local Animal = {name = "Animal"};

local Cat = {name = "Cat"};

--[[
-- __index 如果table中没有对应的键的值，则会去获取 __index 中对应的值
--]]
setmetatable(Cat, {__index = Animal})

print(Cat.name)

