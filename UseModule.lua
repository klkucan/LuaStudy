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

--也可以这么使用模组 
dofile("F:/Github/LuaStudy/MyCoroutine.lua")
MyCoroutine.CreatCor()

-- 这个例子在LuaStudio中需要修改调试模式
require("socket")

function sleep(n)
	socket.select(nil, nil, n)
end
sleep(4)
print(1)

io.read()