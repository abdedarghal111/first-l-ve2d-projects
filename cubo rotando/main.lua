function love.load()
  raiz = require("render")
  player = require("player")
  vector2 = require("vector2")
  a = 0
end
function love.update(dta)
  dt = dta
  a = a + 1
  player:rotate(a)
end
function love.draw()
  love.graphics.setDefaultFilter("nearest")
  print(love.timer.getFPS())
  raiz.render()
end
