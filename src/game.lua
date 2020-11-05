Game = Object:extend()

function Game:new()
	self.forklifter = {}
	self.forklifter.img = love.graphics.newImage("img/forklifter.png")
	self.forklifter.x = 200
	self.forklifter.y = 200
	self.forklifter.speed = 3
	love.graphics.setBackgroundColor(1,0,0)
end

function Game:update(dt)
	if love.keyboard.isDown("w") then
		self.forklifter.y = self.forklifter.y - self.forklifter.speed;
	end
	if love.keyboard.isDown("s") then
		self.forklifter.y = self.forklifter.y + self.forklifter.speed;
	end
end

function Game:draw()
	
	love.graphics.draw(self.forklifter.img, self.forklifter.x, self.forklifter.y)
end

function Game:keypressed(key, scancode, isrepeat)
	if key == "escape" then
		love.event.quit()
 	end
end