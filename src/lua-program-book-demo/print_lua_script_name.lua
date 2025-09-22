

print("Lua script name:", arg[0])
print("Arguments passed to the script:")
for i = 1, #arg do
    print("arg[" .. i .. "] = " .. arg[i])
end


local arr = {10, 20, 30}
-- lua index starts from 1
print("print", arr[1])