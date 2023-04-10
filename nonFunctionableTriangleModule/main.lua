function love.load()
  path = love.filesystem.getSource()
  function love.filesystem.getSource()
    return path.."/"
  end
  dofile(love.filesystem.getSource().."vector2.lua")
  triangle = require"triangle"
  t = triangle.new()
  t:replace(vector2.new(1,2))
  print"work"
end

function love.draw()

end
