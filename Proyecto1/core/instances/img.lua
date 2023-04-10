--[[
Esta es una instancia mas con sus propias propiedades y metatable.
]]--
local vector2 = require("core/vector2")
local img = {
  name = "img", --nombre
  parent = "something", --padre
  type = "drawable",--Tipo de objeto
  img = false, --directorio de la imagen
  visible = true,--visibilidad
  color = false,--color
  corners = false,--corners
  position = vector2:new(0,0),--posicion
  size = vector2:new(0,0),--tamaño
  rotation = 0,--rotacion
  mt = {},--metatable
  new = function(self,parent)--crear uno
    local cub = {}
    for i,v in pairs(self) do
      cub[i] = v
    end
    cub.parent = parent
    setmetatable(cub,cub.mt)
    return cub
  end
}

--su correspondiente metatable

img.mt = {
  __index = function()
    return error("\n -->(programmer):This img instance doesn't exist")
  end,
  --en caso de querer da un valor al vector2 te devolvera un error
  __newindex = function(t,i,v)
    return error("\n -->(programmer):This img instance doesn't exist")
  end
}

return img
