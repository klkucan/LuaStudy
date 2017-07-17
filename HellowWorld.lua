--age = 100
--print(age)

--[[
local arr = {1,"fsf"}
print(type(arr))
print(arr[1])
print(arr[2])

num1 = 1
num2 = 2

res1 = num1 == num2
print(num1,num2,res1)

if num1 < num2 then
	print("true")
else
	print("false")
end



loop = 100

while loop > 0 do
	print(loop)
	loop = loop - 1
end

repeat
	loop = loop + 1
until loop >= 100
print(loop)



for i = 1,10 do
	if i > 4 then
		break
	end
	print(i)
end


function foo()
	print(math.random(0,4))
end

for i = 1,20 do
	foo()
end


function add (num1, num2)
	return num1 + num2
end

function boo(num1, num2, func)
	print("num1 = ", num1..num2)
	print(func(num1,num2))
end

boo(1,2,add)
--]]

--[[
str =
{
[1] = "a",
[2] = "b",
[3] = "c"
}
--]]

--str = {name="Sai",age=33}

--print(str["age"])

--[[
for i,v,x in pairs(str) do
	print("index = ", i, "value = ", v)
end
--]]
--print(str.name)
--newt = table.concat(str,'-',1,2)
--print(newt)

--[[
temp = 3
tab = {x = "xxx" , y = fal, z= 99, [temp]=1, 11 ,22}
--print(tab.temp)
for i,v in pairs(tab) do
	print(i,v)
end

table.concat(tab,"-", 1,2)


--]]

--[[
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

--]]


-- use coroutine

--[[require("MyCoroutine")
cor1 = MyCoroutine.CreatCor()
print(cor1)
for i = 1,  10 do
	MyCoroutine.RunCor(cor1)
end


cor2 = MyCoroutine.CreatCor()
print(cor2)
for i = 1,  10 do
	MyCoroutine.RunCor(cor2)
end

function foo (a)
	print("foo 函数输出", a)
	return coroutine.yield(2 * a) -- 返回  2*a 的值
end

co = coroutine.create(function (a , b)
	print("第一次协同程序执行输出", a, b) -- co-body 1 10
	local r = foo(a + 1)
	
	print("第二次协同程序执行输出", r)
	local r, s = coroutine.yield(a + b, a - b)  -- a，b的值为第一次调用协同程序时传入
	
	print("第三次协同程序执行输出", r, s)
	return b, "结束协同程序"                   -- b的值为第二次调用协同程序时传入
end)

print("main", coroutine.resume(co, 1, 10)) -- true, 4
print("--分割线----")
print("main", coroutine.resume(co, "r")) -- true 11 -9
print("---分割线---")
print("main", coroutine.resume(co, "x", "y")) -- true 10 end
print("---分割线---")
print("main", coroutine.resume(co, "x", "y")) -- cannot resume dead coroutine
print("---分割线---")--]]



--[[mytable =
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

print(mytable.key4)--]]

--[[local p = "D:/Program Files (x86)/Lua/5.1/lua/"
local m_package_path = package.path
package.path = string.format("%s?.lua;%s?/init.lua;%s;%s", p, p, m_package_path,"D:/Program Files (x86)/Lua/5.1/clibs/socket/")

-- ;.\?.lua;d:\Program Files (x86)\Lua\5.1\lua\?.lua;d:\Program Files (x86)\Lua\5.1\lua\?\init.lua;d:\Program Files (x86)\Lua\5.1\?.lua;d:\Program Files (x86)\Lua\5.1\?\init.lua;d:\Program Files (x86)\Lua\5.1\lua\?.luac
--]]


--print(package.path)

package.path = ";.\?.lua;d:\Program Files (x86)\Lua\5.1\lua\?.lua;d:\Program Files (x86)\Lua\5.1\lua\?\init.lua;d:\Program Files (x86)\Lua\5.1\?.lua;d:\Program Files (x86)\Lua\5.1\?\init.lua;d:\Program Files (x86)\Lua\5.1\lua\?.luac"

--[[local mt = {}
mt.__tostring = function (t)
	return '{' .. table.concat(t, ', ') .. '}'
end

local t = {1, 2, 3}
print(t)
setmetatable(t, mt)--]]

--print(t)

require("socket")

function sleep(n)
   socket.select(nil, nil, n)
end
sleep(4)

f = {key1 = 1}
f.__index = function(t, key)
	if key == "key2" then
		return 2 
	end 
end

print(f.key2)