function love.load()
   printx = 0
   printy = 0
end
val = 0   -- establish a variable for later use
function love.update(dt)
	if love.mouse.isDown(2) then
		val = val + dt   -- we will increase the variable by 1 for every second the button is held down
	end
end
function love.draw()
  printx,printy = love.mouse.getPosition()
   love.graphics.print(val, printx, printy)
end

function love.mousepressed(x, y, button, istouch)
   if button == 1 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
      printx = x
      printy = y
   end
end
