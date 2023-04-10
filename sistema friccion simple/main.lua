function love.load()
  x = 0
  y = 0
  fx = 0
  fy = 0
  f = 0.95
  dt = nil
  rend = false
end
function love.update(dt) dt = dt end

function love.draw()
  if love.keyboard.isDown("a") then
    x = x - 1; fx = fx > -3 and fx - 1 or fx
  elseif love.keyboard.isDown("d") then
    x = x + 1; fx = fx < 3 and fx + 1 or fx
  else
    fx = fx *f
    fx = math.floor(fx*100)/100
  end
  if love.keyboard.isDown("w") then
    y = y - 1; fy = fy > -3 and fy - 1 or fy
  elseif love.keyboard.isDown("s") then
    y = y + 1; fy = fy < 3 and fy + 1 or fy
  else
    fy = fy *f
    fy = math.floor(fy*100)/100
  end
  print(fx,fy)
  x = fx ~= 0 and x + fx  or x
  y = fy ~= 0 and y + fy  or y
  love.graphics.rectangle("fill",x,y,50,50)
end
