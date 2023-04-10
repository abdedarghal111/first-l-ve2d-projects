vector2 = require("core/vector2")
imgs = "data/Img/"
arbol = {
  suelo = {
    type = "drawable",
    shape = "cube",
    form = "fill",
    visible = true,
    color = nil,
    pos = vector2.new(0,love.graphics.getHeight()/10 * 8),
    size = vector2.new(1000,1000),
    rotation = 0
  },
  mesa = {
    type = "drawable",
    shape = "img",
    visible = true,
    link = imgs.."Mesa.png",
    pos = vector2.new(0,love.graphics.getHeight()/10 * 7),
    size = vector2.new(love.graphics.getHeight()/10,1000),
    rotation = 0
  }
}
local img = "data/Img"
e = 0
update = function(a)
  e = (math.pi/180)*360

  local a = love.graphics.newImage(img.."/Mesa.png")
  local a = love.graphics.draw(a, 100,100,e)
  --local a = love.graphics.rectangle("fill",100,100, 100, 100)
  return a
end
