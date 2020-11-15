Launchscreen = Object:extend()

function Launchscreen:new()
	self.enabled = true
	love.graphics.setBackgroundColor(0,0,0)
end

function Launchscreen:update(dt)

end

function Launchscreen:draw()
	love.graphics.print("forkliftery")
end

function Launchscreen:keypressed(key, scancode, isrepeat)
	if key == "space" then
		self.enabled = false
	end
end