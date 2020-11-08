Game = Object:extend()

function Game:new(forklifter)
	love.graphics.setBackgroundColor(1,0,0)
	self.forklifter = forklifter;
end

function Game:update(dt)
	self.forklifter:update(dt)
end

function Game:draw()
	self.forklifter:draw()
end

function Game:keypressed(key, scancode, isrepeat)
	if key == "escape" then
		love.event.quit()
 	end
end