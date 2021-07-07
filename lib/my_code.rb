# Your Code Here
def map(source_array)
  new = []
  i = 0
  while i < source_array.length do
    new.push(yield(source_array[i]))
    i += 1
  end
  return new
end

def reduce(source_array, starting_value = nil)
  i = 0
  if starting_value
    total = starting_value
  else
    total = source_array[i]
    i += 1
  end
  while i < source_array.length do
    total = yield(total, source_array[i])
    i += 1
  end
  return total
end    
# [1,2,3]    