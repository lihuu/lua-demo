print(string.rep("abc", 3))

print("Lua script name:", arg[0])
print("Arguments passed to the script:")
for i = 1, #arg do
	print("arg[" .. i .. "] = " .. arg[i])
end

local arr = { 10, 20, 30 }
-- lua index starts from 1
print("print", arr[1])

print(3 / 2)
--print(3 // 2)
print(3 % 2)
print(3 ^ 2)
print(-3 ^ 2) -- - (3^2)

print(3 > 2)

-- math.floor 向下取整
print(math.floor(3.5))
print(math.floor(-3.5))

-- math.ceil 向上取整
print(math.ceil(3.5))
print(math.ceil(-3.5))

print("Hello" .. " " .. "World")

-- string is immutable, cannot be changed
local a = "One String"

-- gsub returns a new string
local b = string.gsub(a, "One", "Another")

print(a)
print(b)

-- check a and b are different address
print(string.format("a: %p, b: %p", a, b))
print(a == b) -- false

print("The length of a is", #a)

print(string.reverse("A Long Line!"))
print(string.lower("A Long Line!"))
print(string.upper("A Long Line!"))

local weeks = { "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday" }

print(weeks[1]) -- Sunday
print(weeks[7]) -- Saturday
print(weeks[#weeks]) -- nil

local ar = {}
ar[1] = 1
ar[2] = nil
ar[3] = 3
ar[4] = 4

print(#ar)

local function multiParams(...)
	local tab = table.pack(...)
	print(tab)
	local result = { 2, 3, 4, 5 }
	return table.unpack(result)
end

local resTab = table.pack(multiParams(1, 2, 3, 4, 5))

for index, value in ipairs(resTab) do
	print(index, value)
end
