-- use coroutine
require("MyCoroutine")
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
	print("foo �������", a)
	return coroutine.yield(2 * a) -- ����  2*a ��ֵ
end

co = coroutine.create(function (a , b)
	print("��һ��Эͬ����ִ�����", a, b) -- co-body 1 10
	local r = foo(a + 1)
	
	print("�ڶ���Эͬ����ִ�����", r)
	local r, s = coroutine.yield(a + b, a - b)  -- a��b��ֵΪ��һ�ε���Эͬ����ʱ����
	
	print("������Эͬ����ִ�����", r, s)
	return b, "����Эͬ����"                   -- b��ֵΪ�ڶ��ε���Эͬ����ʱ����
end)

print("main", coroutine.resume(co, 1, 10)) -- true, 4
print("--�ָ���----")
print("main", coroutine.resume(co, "r")) -- true 11 -9
print("---�ָ���---")
print("main", coroutine.resume(co, "x", "y")) -- true 10 end
print("---�ָ���---")
print("main", coroutine.resume(co, "x", "y")) -- cannot resume dead coroutine
print("---�ָ���---")