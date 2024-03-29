function love.load()
	lg = love.graphics
	lk = love.keyboard
	lg.setDefaultFilter('nearest', 'nearest')

	require 'voxel'

	SCALE = 10

	screen = {
		w = 600,
		h = 400
	}

	center = {
		w = 300,
		h = 200
	}

	love.window.setMode(screen.w, screen.h, {fullscreen = false})

	l1 = {8,7,6,2,3,4,5,5,5,5,4,3,2,1}
	l2 = {1,2,3,6,5,7,4,3,2,1}

	v1 = lg.newImage('images/b1.png')
	v2 = lg.newImage('images/burger.png')

	r = 0

	vox1 = Voxel.new(v1, 14, l1)
	vox2 = Voxel.new(v2, 12, l2)
end

function love.update(dt)
	r = r + dt
	vox1.rot = r
	vox2.rot = r
	--vox3.rot = r
end

function love.draw()
	vox1:draw(100, 100)
	vox2:draw(300, 100)
	--vox3:draw(500, 100)

	--love.graphics.rotate(r)
	--love.graphics.draw(v1, 100, 100, 0, 10, 10, 20, 20)
end