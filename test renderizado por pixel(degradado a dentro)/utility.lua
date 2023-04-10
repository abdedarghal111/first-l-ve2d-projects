local utility = {}

local x,y = love.graphics.getDimensions()

function utility.getxyfromn(n)
  --variables iniciales
  local x,y
  local x_,y_ = love.graphics.getDimensions()

  --variable y
  local f = n % y_
  if f == 0 then
    y = y_
  else
    y = f
  end

  --variable x
  t = (n - y) / y_
  if n == x_ then
    x = x_
  else
    x = t + 1
  end

  --output
  return x,y
end

function utility.transform255to1(t)
  return t[3]/255,t[4]/255,t[5]/255,t[6]
end

function utility.getxyfromt(t)
  return t[1],t[2]
end

return utility
