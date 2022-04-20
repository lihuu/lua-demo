local Set = {}
local mt = {}

function Set.new(l)
    local set = {}
    setmetatable(set, mt)
    for _, v in ipairs(l) do set[v] = true end
    return set
end

function Set.union(a, b)
    local set = {}
    setmetatable(set, mt)
    for k in pairs(a) do set[k] = true end
    for k in pairs(b) do set[k] = true end
    return set
end

function Set.intersection(a, b)
    local res = Set.new({})
    for k in pairs(a) do res[k] = b[k] end
    return res
end

function Set.tostring(a)
    local l = {}
    for e in pairs(a) do l[#l + 1] = tostring(e) end
    return "{" .. table.concat(l, ', ') .. "}"
end

mt.__add = Set.union

mt.__le = function(a, b)
    for k in pairs(a) do if not b[k] then return false end end
    return true
end

mt.__lt = function(a, b) return a <= b and not (b <= a) end

mt.__eq = function(a, b) return a <= b and b <= a end

mt.__tostring = Set.tostring

local s1 = Set.new({10, 20, 30})
local s2 = Set.new {30, 1}
print(getmetatable(s1))
print(getmetatable(s2))
print(s1)
print(s2)
print(s1 + s2)
local s = Set.new {1, 2, 3}
print(s)
local s3 = Set.new {2, 4}
local s4 = Set.new {4, 10, 2}
print(s3 <= s4)
print(s3 <= s4)
print(s3 >= s4)
print(s3 > s4)
print(s3)
