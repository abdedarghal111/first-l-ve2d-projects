--conseguir dibujar una linea con la ayuda del shader
local linea = {}

local shader = require("shaderLineas")

shader = love.graphics.newShader(shader)

linea.__index = linea

linea.lineas = {}
linea.paraShader = {}

function linea:dibujar()
  love.graphics.setShader(shader)
  shader:send(lineas, linea.paraShader)
end

function linea.nueva(x,y,dibujarse)
  local lineaN = linea.lineas[linea.lineas + 1]
  lineaN = {}
  lineaN.tabla = linea.paraShader[linea.paraShader + 1]
  lineaN.tabla = {x,y}
  lineaN.x,lineaN.y = x,y
  lineaN.puedeDibujarse = dibujarse
  setmetatable(lineaN, linea)

  return lineaN
end

return linea
