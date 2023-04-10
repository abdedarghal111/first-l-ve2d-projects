local player = {}
local grap = love.graphics.rectangle
local vector2 = require("vector2")
local raiz = require("render")
player.draw = true
player.position = vector2:new(0,0)
player.size = vector2:new(500,500)
player.rotation = 0
player.origin = "center"
raiz.add(player)
function player.rotate(self,rot)
  self.rotation = rot/360*math.pi
end
return player
