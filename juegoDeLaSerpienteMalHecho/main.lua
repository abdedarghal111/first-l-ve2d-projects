
local x = 140
local y = 5
local clones = 2
local timer = 0
local limit = 10
local sepuede = true
local muerto = false
local direction = "derecha"
local time = love.timer.getTime()
local tabla = {
  {x = 140,y = 5},
  {x = 120,y = 5},
  {x = 100,y = 5}
}

local function random()
  randomX = love.math.random(5,29) * 20
  randomY = (love.math.random(1, 24) * 20) + 5
end
random()
function love.update(dt)
  if timer >= limit then
    sepuede = true
    timer = 0
  elseif timer < limit then
    timer = timer + 1
  end
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
  if x < 100 or x > 580 then
    muerto = true
  elseif y < 5 or y > 485 then
    muerto = true
  end
  if x == randomX and y == randomY then
    clones = clones + 1
    random()
  end
  if sepuede == true and muerto == false then
    for i = clones,1 do
      if i ~= 1 then
        local penultimo = tabla[i-1].x
        local penultimoo = tabla[i-1].y
      tabla[i].x = penultimo
      tabla[i].y = penultimoo
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
    sepuede = false
  end
end
function love.draw()
  love.graphics.print("time:"..math.floor(love.timer.getTime()-time), 0,0,0,1,1)
  love.graphics.print("FPS:"..love.timer.getFPS(),0,10,0,1,1)
  love.graphics.print("orientacion:"..direction,0,20,0,1,1)
  love.graphics.print("current position:"..x..","..y,0,30,0,1,1)
  love.graphics.print("food positiom:"..randomX..","..randomY,0,40,0,1,1)
  love.graphics.print("current clones:"..clones,0,50,0,1,1)
  love.graphics.print("numero tablas"..#tabla,0,60,0,1,1)
  love.graphics.rectangle("fill",x,y,20,20)
  love.graphics.rectangle("line", 100, 5, 500,500)
  love.graphics.circle("fill", randomX + 10,randomY + 10, 10)
  for i= 1,#tabla do
    if i ~= 1 then
      love.graphics.rectangle("fill",tabla[i].x,tabla[i].y,20,20)
    end
  end
end
