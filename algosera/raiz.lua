raiz = {personaje = {}}
function createtable(personaje,mode,positionx,positiony,tamanox,tamanoy,bodyveloity)
  personaje = {mode = member,x = positionx,y = positiony,tx = tamanox,ty = tamanoy,velocity = bodyveloity}
end
createtable(raiz.personaje,"fill",0,0,300,300,100)

function render(self)
  if self.mode == "fill" or self.mode == "line" then
    return love.graphics.rectangle(self.mode,self.x,self.y,self.tx,self.ty)
  else
    return love.graphics.draw(love.graphics.newImage(self.mode),love.graphics.newQuad(0,0,100000,100000,self.tx,self.ty),self.x,self.y)
  end
end
function movimiento(self,dt)
  if love.keyboard.isDown("w") or love.keyboard.isDown("up") then
    self.y = self.y - self.velocity * dt
  elseif love.keyboard.isDown("a") or love.keyboard.isDown("left") then
    self.x = self.x - self.velocity * dt
  elseif love.keyboard.isDown("d") or love.keyboard.isDown("right") then
    self.x = self.x + self.velocity * dt
  elseif love.keyboard.isDown("s") or love.keyboard.isDown("down") then
    self.y = self.y + self.velocity * dt
  elseif love.keyboard.isDown("m") then
    self.ty = self.ty + 10
    self.tx = self.tx + 10
  elseif love.keyboard.isDown("n") then
    self.ty = self.ty - 10
    self.tx = self.tx - 10
  end
end
