local screen
local x,y = love.graphics.getDimensions()

function love.load()
  screen = require("screen")
end


function love.update(dt)
  screen:update(dt)
end

function love.draw()
  screen:draw()
  love.graphics.setColor(1,1,1)
  love.graphics.print(love.timer.getFPS())
end
