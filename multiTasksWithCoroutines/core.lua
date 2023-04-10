local coroutines = {cor = {},
  core = function(self,obj)
    table.insert(self.cor,obj)
  end,
  run = function(self)
    for i,v in pairs(self.cor) do
      if coroutine.status(v) == "dead" then
        
        --changed this line now a days when uploading this to github
        --removed: table.remove(self.cor,v)
        --started here
        self.cor[i] = nil
        --ended editing
      else
        coroutine.resume(v)
      end
    end
  end
}
return coroutines
