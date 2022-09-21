local line = "Content-Type: application/json;"
print(line)

for w in string.gmatch(line, "[%a-/]+") do
  print(w)
end

function string.split(str, delimiter)
  if str == nil or str == '' or delimiter == nil then
    return nil
  end

  local result = {}
  for match in (str .. delimiter):gmatch("(.-)" .. delimiter) do
    table.insert(result, match)
  end
  return result
end

local split_result = line:split(": ")
print("-----------------------------")
print(split_result[1])
print(split_result[2])
print("-----------------------------")

local result = line:gsub("-", "_")

print(result)

-- local test_table = {}

-- test_table["aa"] = 123

-- print(test_table["aa"])

local a = 0

if a then
  print("AAAAAAA")
end

