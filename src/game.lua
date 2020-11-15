Game = Object:extend()

function Game:new(forklifter)
	love.graphics.setBackgroundColor(1,0,0)
	self.forklifter = forklifter;
	self.debug = false
end

function Game:update(dt)
	self.forklifter:update(dt)
end

function Game:draw()
	self.forklifter:draw()
	if self.debug then
		love.graphics.print(love.timer.getFPS())
		love.graphics.print(self.forklifter.angle, 0, 10)
	end
end

function Game:keypressed(key, scancode, isrepeat)
	if key == "escape" then
		love.event.quit()
 	end
end