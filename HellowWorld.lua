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



mytable = setmetatable({},{})
mt = getmetatable(mytable)
print(mt, mytable)

