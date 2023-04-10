function love.load()
  rep = -20
  mi = 3.25
  ma = 5
  ui = 3
  local lov = love.graphics
  c = {
    stats = {
      x = lov.getWidth()/5 * 2,
      y = lov.getHeight()/5 * 2,
      q = lov.getWidth()/5,
      w = lov.getWidth()/5
    }
  }
  ad = function(t)
    rep = rep + 1
    if rep >= 4 then else
    local x = t.stats.x/ui
    local y = t.stats.x/ui
    for i = 1,8 do
      if i == 1 then t[i] = {stats = {x = x,y = y,q = x,w = y}}
      elseif i == 2 then t[i] = {stats = {x = x*mi,y = y,q = x,w = y}}
      elseif i == 3 then t[i] = {stats = {x = x*ma,y = y,q = x,w = y}}
      elseif i == 4 then t[i] = {stats = {x = x,y = y*mi,q = x,w = y}}
      elseif i == 5 then t[i] = {stats = {x = x,y = y*ma,q = x,w = y}}
      elseif i == 6 then t[i] = {stats = {x = x*mi,y = y*ma,q = x,w = y}}
      elseif i == 7 then t[i] = {stats = {x = x*ma,y = y*ma,q = x,w = y}}
      elseif i == 8 then t[i] = {stats = {x = x*ma,y = y*mi,q = x,w = y}}
      end
      ad(t[i])
    end
    end
  end
  add = function(t)
    ad(t)
  end
  reseach = function(e)
    rend(e)
    for i = 1,8 do
      if e[i] == nil then else
        reseach(e[i])
      end
    end
  end
  rend = function(a)
    local e = a.stats
    return love.graphics.rectangle("fill",e.x,e.y,e.q,e.w)
  end
  add(c)
end
function love.draw()
  reseach(c)
end
