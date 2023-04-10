local function devolver_valores(X,Y,x,y)
  local r,g,b,a
  r = 0
  g = math.cos((X/x*4)-2)
  b = 0
  a = 1
  return r,g,b,a
end

return function(screen)
  local x,y = love.graphics.getDimensions()
  local n = 0
  for X = 1,x do
    for Y = 1,y do
      n = n + 1
      local r,g,b,a = devolver_valores(X,Y,x,y)
      screen[n] = {X,Y-2,r,g,b,a}
    end
  end
end
