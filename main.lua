lf = love.filesystem
ls = love.sound
la = love.audio
lp = love.physics
lt = love.thread
li = love.image
lg = love.graphics

function love.load()
require "src/classic"
Object = require "src/classic"

require "src/forklifter"
require "src/game"
require "src/launchscreen"

forklifter = Forklifter()
game = Game(forklifter)
launcher = Launchscreen()
game.debug = true
end

function love.update(dt)
	if launcher.enabled then
		launcher:update(dt)
	else
		game:update(dt)
	end
end

function love.draw()
	if launcher.enabled then
		launcher:draw()
	else
		game:draw()
	end
end

function love.keypressed(key, scancode, isrepeat)
	if launcher.enabled then
		launcher:keypressed(key, scancode, isrepeat)
	else
		game:keypressed(key, scancode, isrepeat)
	end
end