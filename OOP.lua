-- Meta class
Shape = {area = 0}

-- �����෽�� new
function Shape:new (o,side)
  o = o or {}
  setmetatable(o, self)
  self.__index = self
  side = side or 0
  self.area = side*side;
  return o
end

-- �����෽�� printArea
function Shape:printArea ()
  print("���Ϊ ",self.area)
end

return Shape

