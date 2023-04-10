
function love.load()
  instance = require "core/instancias"
  detect = require "core/renderengine/detectfunctions"
  vector2 = require "core/vector2"
  a = {}
  e = instance.rectangle:new(a)
  e.position = vector2:new(100,100)
  e.size = vector2:new(100,100)
end

function love.draw()
  e.position.x = e.position.x + 1
  detect(e)
end
