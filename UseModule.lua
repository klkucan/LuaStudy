-- use module

-- temp = "local temp1"

require("Module/Class")
temp3 = "local temp3"
-- temp = "local temp1"

print(temp)
print(temp2)
print(Class.temp3)
print(temp3)
print(Class.FindGrade(1))

--Ҳ������ôʹ��ģ�� 
dofile("F:/Github/LuaStudy/MyCoroutine.lua")
MyCoroutine.CreatCor()

-- ���������LuaStudio����Ҫ�޸ĵ���ģʽ
require("socket")

function sleep(n)
	socket.select(nil, nil, n)
end
sleep(4)
print(1)

io.read()