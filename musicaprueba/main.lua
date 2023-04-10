function love.load()
	source = love.audio.newSource("Prueba.wav", "stream")
	source:setPitch(0.5)
end

function love.update(dt)
	if not source:isPlaying( ) then
		love.audio.play( source )
	end
end
