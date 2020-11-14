Forklifter = Object:extend()

function Forklifter:new()
	self.img = love.graphics.newImage("img/forklifter.png")
	self.x = 200
	self.y = 200
	self.speed = 2
	self.angle = 0
	self.rotationfactor = 0.03
	
end

function Forklifter:update(dt)
	if love.keyboard.isDown("w") then
		self.y = self.y + self.speed * math.sin(self.angle);
		self.x = self.x + self.speed * math.cos(self.angle); 
		if love.keyboard.isDown("a") then
			self.angle = self.angle - self.rotationfactor;
		end
		if love.keyboard.isDown("d") then
			self.angle = self.angle + self.rotationfactor;
		end
	end
	if love.keyboard.isDown("s") then
		self.y = self.y - self.speed * math.sin(self.angle);
		self.x = self.x - self.speed * math.cos(self.angle); 
		if love.keyboard.isDown("a") then
			self.angle = self.angle + self.rotationfactor;
		end
		if love.keyboard.isDown("d") then
			self.angle = self.angle - self.rotationfactor;
		end
	end
end

function Forklifter:draw()
	local fx = self.img:getWidth()/2;
	local fy = self.img:getHeight()/2;
	love.graphics.draw(self.img, self.x, self.y, self.angle, 1, 1, fx, fy)
end
