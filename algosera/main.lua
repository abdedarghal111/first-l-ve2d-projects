function love.load()
require "raiz"
end
function love.update(dt)
  movimiento(raiz.personaje,dt)
  --raiz.blocks.fondo:movimiento(dt)
end
function love.draw()
  render(raiz.personaje)
  --raiz.blocks.fondo:render()
end
