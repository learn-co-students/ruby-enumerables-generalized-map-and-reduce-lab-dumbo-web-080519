def map(array)
  i = 0
  new_array = []
  while i < array.length do
    new_array.push(yield array[i])
    i +=1
  end
  return new_array
end



def reduce(array, starting_point = nil)
  if starting_point
    sum = starting_point
   i = 0
  else
    sum = array[0]
    i = 1
  end
  while i < array.length do
  sum = yield(sum, array[i])
  i += 1
  end
  sum
 end
