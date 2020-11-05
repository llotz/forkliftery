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

require "src/game"

game = Game()
end

function love.update(dt)
	game:update(dt)
end

function love.draw()
	game:draw()
	lg.print("nice", 100, 100)
end

function love.keypressed(key, scancode, isrepeat)
	game:keypressed(key, scancode, isrepeat)
end