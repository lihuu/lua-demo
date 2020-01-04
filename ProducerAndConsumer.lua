#!/usr/local/bin/lua
queue = {}
count=0;

producer = coroutine.create(function()
    print("producer running")
    while true do 
        print("aaa")
        while #queue < 3 do
            print(coroutine.status(producer))
            table.insert(queue,"apple")
        end
        count=count+1
        coroutine.resume(consumer)
        coroutine.yield()
        if count >=10 then 
            break
        end
    end 
end)


consumer = coroutine.create(function()
    print("consumer running")
    while true do 
        while #queue > 0 do
            item=table.remove(queue,0)
            print(#queue)
            print(count,item)
        end
        coroutine.resume(producer)
        coroutine.yield()
        if count >=10 then
            break
        end
    end
end)

coroutine.resume(producer)
--coroutine.resume(consumer)
--


