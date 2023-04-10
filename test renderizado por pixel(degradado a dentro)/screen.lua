local screen = {}

local utility = require("utility")
local x,y = love.graphics.getDimensions()

for n = 0,x*y do
  local x_,y_ = utility.getxyfromn(n)
  --screen[n] = {x,y,r,g,b,a}

  --mates weas
  local zv = {x/2,y/2}
  local d_ = math.sqrt(math.pow(x,2)+math.pow(y,2))
  local v = {zv[1] - x_,zv[2] - y_}
  local d = math.sqrt(math.pow(v[1],2)+math.pow(v[2],2))
  local r = d/d_*255/150
  --aqui terminan las mates weas

  screen[n] = {x_,y_,r,r,r,1}
end


function screen:update(dt)

end

function screen:draw()
  --[[for n = 1,x*y do
    local t = screen[n]
    local x_,y_ = utility.getxyfromt(t)
    love.graphics.setColor(utility.transform255to1(t))
    love.graphics.rectangle("fill",x_,y_,1,1)
  end--]]
  love.graphics.points(screen)
end

return screen
