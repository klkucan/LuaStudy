-- 基本使用
age = 100
print(age)

-- table变量
local arr = {1,"fsf"}
print(type(arr))
print(arr[1])
print(arr[2])

-- 多个变量一起赋值
a,b,c = 1,2
print(a)
print(b)
print(c)


-- 全局和局部变量
x = 1

local x = 10
print(x)

print(x)
for i = 1,10 do
	print(x)
	x = i
	print(x)
end

function boo()
	local x = 10
	do
		return
	end
	local i = 10
	print(1)
end