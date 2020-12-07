lf = love.filesystem
ls = love.sound
la = love.audio
lp = love.physics
lt = love.thread
li = love.image
lg = love.graphics

test = ""
list = ""

function love.load()
require "src/classic"
Object = require "src/classic"

require "src/forklifter"
require "src/game"
require "src/launchscreen"
require "src/events"

events = Events()
forklifter = Forklifter()
game = Game(forklifter)
launcher = Launchscreen()

startgame = function() 
	test = "muss gehen"
end

startgame2 = function()
	list = "whaaaat"
end

events:add("start_game", "startup", startgame)
list = events:list()
events:add("start_game", "startup", startgame2)
events:raise("start_game")

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
		love.graphics.print(test, 100, 100)
		love.graphics.print(list, 100, 130)
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
