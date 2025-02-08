function crash(func)
  for i = 1,math.huge do
  while true do
      func()
  end
  end
end

crash(crash)
