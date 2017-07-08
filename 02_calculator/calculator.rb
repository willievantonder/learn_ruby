def add(x, y)
  x + y
end

def subtract(x, y)
  x - y
end

def sum array
  total = 0
  array.each {|x| total += x}
  return total
end
