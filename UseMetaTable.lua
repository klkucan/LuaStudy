mytable =
{
key1 = 1,
key2 =2
}
mt = {}

mt.__index =
function (t,key)
	if key == "key3" then
		return 3
	elseif key == "key4"  then
		return 4
	else
		return 0
	end
	
end

mt.__newindex =
function (t,key,value)
	t.key = value
end



setmetatable(mytable,mt)

print(mytable.key4)


local mt = {}
mt.__tostring = function (t)
	return '{' .. table.concat(t, ', ') .. '}'
end

local t = {1, 2, 3}
print(t)
setmetatable(t, mt)
print(t)


f = {key1 = 1}

mf = {}
mf.__index = function (t, key)
	if key == "key2" then
		return 2
	end
end

setmetatable(f, mf)



print(f.key2)
a={2}
if next(a) ~= nil then
	print(next(a))
end
