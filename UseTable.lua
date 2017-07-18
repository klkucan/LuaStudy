str =
{
[1] = "a",
[2] = "b",
[3] = "c"
}
newt = table.concat(str,'-',1,2)
print(newt)


str2 = {name="Sai",age=33}
print(str2["age"])
for i,v,x in pairs(str) do
	print("index = ", i, "value = ", v)
end

print(str2.name)


temp = 3
tab = {x = "xxx" , y = fal, z= 99, [temp]=1, 11 ,22}
--print(tab.temp)
for i,v in pairs(tab) do
	print(i,v)
end

table.concat(tab,"-", 1,2)