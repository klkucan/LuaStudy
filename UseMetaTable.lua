mt = {}

mt.__index =
function (t,key)
	if key == "key3" then
		return 5
	elseif key == "key4"  then
		return 6
	else
		return 0
	end
	
end

mt.__newindex =
function (t,key,value)
	t.key = value
end

mt.__tostring = function (t)
	local tempTable = {}
	local index = 0
	for i,v in pairs(t) do
		index = index + 1
		tempTable[index] = v
		print(i.."/"..v)
	end
	return '{' .. table.concat(tempTable, ', ') .. '}'
end

-- 一旦定义了__metatable，就代表getmetatable只能得到这个函数的值，
-- 而不能再次赋值,否则会报错“cannot change a protected metatable”
mt.__metatable = "不能看啊不能看"


local t = {1, 2, 3, key1 = 3,key2 = 4}
setmetatable(t, mt)
print(t)

print(getmetatable(t))

print(t["key4"])


mt2 = {}

-- 下面的代码会报错
--setmetatable(t,mt2)


