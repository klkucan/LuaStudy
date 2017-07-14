Class = {}

Class.Name = "name"

Class.Grades =
{
  "Grade1",
  "Grade2",
  "Grade3"
}


temp = "a"
local temp2 = "b"
Class.temp3 = "c"

function Class.FindGrade(key)
   return Class.Grades[key].."-"..temp..temp2..Class.temp3
end

return Class
