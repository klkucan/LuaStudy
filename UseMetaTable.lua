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

-- һ��������__metatable���ʹ���getmetatableֻ�ܵõ����������ֵ��
-- �������ٴθ�ֵ,����ᱨ��cannot change a protected metatable��
mt.__metatable = "���ܿ������ܿ�"


local t = {1, 2, 3, key1 = 3,key2 = 4}
setmetatable(t, mt)
print(t)

print(getmetatable(t))

print(t["key4"])


mt2 = {}

-- ����Ĵ���ᱨ��
--setmetatable(t,mt2)


