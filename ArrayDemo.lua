local myArray = {"A","B","C"}

for i = 1,3, 1 do
    print(myArray[i])
end

for i,v in ipairs(myArray) do
    --print(i)
    --print(v)
    print(i .. ':' .. v)
end
