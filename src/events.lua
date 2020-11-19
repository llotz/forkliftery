Events = Object:extend()

function Events:new()
	self.events = {}
end

function Events:add(name, source, callback)
	if self.events[name] == nil or type(self.events[name]) ~= 'table' then
		self.events[name] = {}
	end
	newEvent = {}
	newEvent.source = source
	newEvent.callback = callback
	table.insert(self.events[name], newEvent)
end

function Events:remove(name)
	if self.events[name] == nil or type(self.events[name]) ~= 'table' then return end
	table.remove(self.events[name])
end

function Events:raise(name)
	if self.events[name] == nil or type(self.events[name]) ~= 'table' then return end
	for key,value in ipairs(self.events[name]) do
		value.callback()
	end
end

function Events:list()
	info = ""
	for key, value in ipairs(self.events) do 
		info = info .. key .. "; "
	end
	return info
end
