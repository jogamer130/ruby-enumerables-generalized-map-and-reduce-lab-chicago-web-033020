def map(x)
  new = []
  i = 0
  while i < x.length
    new.push(yield(x[i]))
    i += 1
  end
  new
end

def reduce(x, work=nil)
  if sp
    sum = work
    i = 0
  else
    sum = x[0]
    i = 1
  end
  while i < x.length
    sum = yield(sum, s[i])
    i += 1
  end
  sum
end
