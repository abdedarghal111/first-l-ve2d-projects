--[[
Modulo que te devuelve la funcion para printearlo.
--]]
detectfunctions = function(self)
  if self.drawable == "cube" then
    return love.graphics.rectangle(self.fill == true and "fill" or "line",
    self.position.x,self.position.y,self.size.x,self.size.y)
  end
end
return detectfunctions
