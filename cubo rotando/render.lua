local raiz = {draw = {}}
function raiz.add(object)
  table.insert(raiz.draw,object)
end
function raiz.remove(object)
  table.remove(raiz.draw,object)
end
function raiz.render()
  for i,v in pairs(raiz.draw) do
    if v.draw then
      if v.origin == "center" then
        love.graphics.translate(v.position.x + v.size.x/2,v.position.y + v.size.y/2)
      end
      love.graphics.rotate(v.rotation)
      love.graphics.translate(-v.size.x/2,-v.size.y/2)
      love.graphics.rectangle("fill",0,0,v.size.x,v.size.y)
    end
  end
end
return raiz
