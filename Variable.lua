-- ����ʹ��
age = 100
print(age)

-- table����
local arr = {1,"fsf"}
print(type(arr))
print(arr[1])
print(arr[2])

-- �������һ��ֵ
a,b,c = 1,2
print(a)
print(b)
print(c)


-- ȫ�ֺ;ֲ�����
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