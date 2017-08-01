function add (num1, num2)
	return num1 + num2
end

function boo(num1, num2, func)
	print("num1 = ", num1..num2)
	print(func(num1,num2))
end

boo(1,2,add)

-- 闭包
function newCount()
	local i =0
	return function ()
		i=i+1
		print(i)
	end
end

c1 = newCount()
print(c1())
print(c1())

c2 = newCount()
print(c2())
print(c2())
print(c1())


-- sandbox
print(math.sin(45))

oldSin = math.sin
math.sin = function (x)
	return oldSin(x*math.pi/180)
end

print(math.sin(45))

-- 递归
local function foo(x)
	if x == 1 then
		return 1
	else return x*foo(x-1)
	end
end

print(foo(3))


-- self的使用
foo = {x = 10}

function foo.boo(self,y)
	self.x =self.x- y
end

foo.boo(foo,2)


a = foo
foo = nil
a.boo(a,1)


-- 迭代
tt = {10,20,30}

function GetValue(t)
	local i =0
	return function ()
		i=i+1
		return t[i]
	end
end

iterator = GetValue(tt)

while true do
	local v = iterator()
	if v == nil then
		break
	end
	print(v)
end

-- 基于for的迭代

local function getNext(list, node)
	if not node then
		return list
	else
		return node.next
	end
end

function tra(list)
	return getNext,list,nil
end

list = nil
for line in io.lines() do
	list  = {val = line, next = list}
end

for node in list do
	print(tra(node.val))
end