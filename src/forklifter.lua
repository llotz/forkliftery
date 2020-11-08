Forklifter = Object:extend()

function Forklifter:new()
	self.forklifter = {}
	self.forklifter.img = love.graphics.newImage("img/forklifter.png")
	self.forklifter.x = 200
	self.forklifter.y = 200
	self.forklifter.speed = 4
	self.forklifter.angle = 0
	self.forklifter.rotationfactor = 0.04
	
end

function Forklifter:update(dt)
	if love.keyboard.isDown("w") then
		self.forklifter.y = self.forklifter.y + self.forklifter.speed * math.sin(self.forklifter.angle);
		self.forklifter.x = self.forklifter.x + self.forklifter.speed * math.cos(self.forklifter.angle); 
		if love.keyboard.isDown("a") then
			self.forklifter.angle = self.forklifter.angle - self.forklifter.rotationfactor;
		end
		if love.keyboard.isDown("d") then
			self.forklifter.angle = self.forklifter.angle + self.forklifter.rotationfactor;
		end
	end
	if love.keyboard.isDown("s") then
		self.forklifter.y = self.forklifter.y - self.forklifter.speed * math.sin(self.forklifter.angle);
		self.forklifter.x = self.forklifter.x - self.forklifter.speed * math.cos(self.forklifter.angle); 
		if love.keyboard.isDown("a") then
			self.forklifter.angle = self.forklifter.angle + self.forklifter.rotationfactor;
		end
		if love.keyboard.isDown("d") then
			self.forklifter.angle = self.forklifter.angle - self.forklifter.rotationfactor;
		end
	end
end

function Forklifter:draw()
	local fx = self.forklifter.img:getWidth()/2;
	local fy = self.forklifter.img:getHeight()/2;
	love.graphics.draw(self.forklifter.img, self.forklifter.x, self.forklifter.y, self.forklifter.angle, 1, 1, fx, fy)
	love.graphics.print(self.forklifter.angle)
end
