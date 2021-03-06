Spike = class('Spike')

Spike.image = love.graphics.newImage('sprites/spike.png')
Spike.image:setFilter("nearest", "nearest")

function Spike:initialize(x, y, z)
  self.x = x + 32
  self.y = y + 32
  self.z = 10

  self.body = Collider:addCircle(self.x, self.y, 32)
  self.body.parent = self
end

function Spike:draw()
  love.graphics.draw(Spike.image, self.x, self.y, 0, 1, 1, 32, 32)
end
