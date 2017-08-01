local count = 0

function Entity(t)
	--print(t['name'] or "muyou")
	count = count + 1
end

--dofile("F:/Github/LuaStudy/DataDemo.lua")
dofile("F:/Github/LuaStudy/DataDemo.lua")
print(count)

print("1" == 1 or "数字不能和字符串比较")