function add (num1, num2)
	return num1 + num2
end

function boo(num1, num2, func)
	print("num1 = ", num1..num2)
	print(func(num1,num2))
end

boo(1,2,add)