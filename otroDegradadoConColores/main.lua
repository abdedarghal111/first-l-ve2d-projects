function love.load(arg)
  shader = love.graphics.newShader([[
  extern vec2 screen;

  vec4 effect(vec4 color, Image tex, vec2 texture_coords, vec2 screen_coords)
  {
    vec2 pixel = vec2(screen_coords.x/screen.x,screen_coords.y/screen.y);
    vec4 col = vec4(pixel,0.0,1.0);
    return col;
  }
  ]])
end

function love.update(dt)

end

function love.draw()
  shader:send("screen",{love.graphics.getWidth(),love.graphics.getHeight()})
  love.graphics.setShader(shader)
  love.graphics.rectangle("fill",0,0,love.graphics.getDimensions())
  love.graphics.setShader()
end
