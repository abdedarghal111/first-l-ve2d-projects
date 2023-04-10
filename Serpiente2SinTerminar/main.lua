local x = 0
local y = 0
local tablaX = {}
local tablaY = {}
local clones = 3
local direction = "derecha"
function love.update(dt)

  if love.keyboard.isDown("d") then
  direction = "derecha"
end
if love.keyboard.isDown("s") then
  direction = "abajo"
end
if love.keyboard.isDown("a") then
  direction = "izquierda"
end
if love.keyboard.isDown("w") then
    direction = "arriba"
end
if time == nil or love.timer.getTime()-time > 0.1 then
  for i = clones,1 do
    if i == 1 then
    else
    tablaX[i] = tablaX[i-1]
    tablaY[i] = tablaY[i-1]
  end
  end
  if direction == "derecha" then
    x = x + 20
  elseif direction == "izquierda" then
    x = x - 20
  elseif direction == "arriba" then
    y = y - 20
  elseif direction == "abajo" then
    y = y + 20
  end
  time = love.timer.getTime()
end
end
function love.draw()
  love.graphics.circle("fill",x,y,10)
  love.graphics.print(#tablaX)
  for i = 2,#tablaX do
  love.graphics.circle("fill",tablaX,tablaY,10)
end
end
