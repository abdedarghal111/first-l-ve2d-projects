local triangle = {vector2.new(),vector2.new(),vector2.new()}

function triangle:replace(a,e,i)
  self[1] = a or self[1]
  self[2] = e or self[2]
  self[3] = i or self[3]
end

function triangle:draw()
  for i = 1,3 do love.graphics.line(self[i].x,self[i].y) end
end

function triangle:print()
  print(tostring(self[1])..","..tostring(self[2])..","..tostring(self[3]))
end

function triangle:getvector(n1,n2)
  local x,y = self.[n1],self.[n2]
  local x,y = x.x-y.x,x.y-y.y
  local x = math.sqrt(x^2+y^2)
  return x
end

function triangle:separate(num)
  if num then return self[num] end
  return self[1],self[2],self[3]
end

function triangle.create(...)
  local e = {}
  for i,v in triangle do
    e[i] = v
  end
  e:replace(...)
  return e
end

return triangle
