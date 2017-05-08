--[[
	https://github.com/srcnalt/Voxel
]]

Voxel = {}
Voxel.__index = Voxel

function Voxel.new(img, width, order)
  	local self = setmetatable({}, Voxel)
  	self.img = img
  	self.num = img:getWidth() / width
  	self.order = order
	self.quadList = {}
	self.len = #order
	self.rot = 0
	self.width = width

	for i=1, self.num do
		self.quadList[i] = love.graphics.newQuad((i - 1) * width, 0, width, img:getHeight(), img:getWidth(), img:getHeight())
	end

  return self
end

function Voxel.draw(self, x, y)
  	for i = self.len, 1, -1 do
		lg.draw(self.img, self.quadList[self.order[i]], x, y + i * 5, r, SCALE, SCALE, self.width/2, self.img:getHeight()/2)
	end
end