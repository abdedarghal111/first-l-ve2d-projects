function love.load()
  core = require"core"
  --editing now a days started here:
  core:core(coroutine.create(function()
    for i = 1,100 do
      print("A: "..i.." times")
      coroutine.yield()
    end
  end))
  core:core(coroutine.create(function()
    for i = 1,100 do
      print("B: "..i.." times")
      coroutine.yield()
    end
  end))
  --ended editing
end
function love.update(dt)dt = dt end
function love.draw()
  core:run()
end
