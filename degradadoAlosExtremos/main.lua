local funcion
local shader
local screen = {}
local x,y = love.graphics.getDimensions()

function love.load()
  local module = require("module")
  funcion = coroutine.create(module)
end

function love.update(dt)
  coroutine.resume(funcion,screen)
end

function love.draw()
  love.graphics.points(screen)
end
