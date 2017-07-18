num1 = 1
num2 = 2

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
