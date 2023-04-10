local coroutines = {cor = {},
  core = function(self,obj)
    table.insert(self.cor,obj)
  end,
  run = function(self)
    for i,v in pairs(self.cor) do
      if coroutine.status(v) == "dead" then
        table.remove(self.cor,v)
      else
        coroutine.resume(v)
      end
    end
  end
}
return coroutines
