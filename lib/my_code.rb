# maps array elements onto a new array
def map(array)
  counter = 0
  new_array = []

  while counter < array.length do
    new_array.push(yield(array[counter]))
    counter += 1
  end

  new_array
end

# reduces array to one value
def reduce(array, starting_point = nil)
  if starting_point
    counter = 0
    total = starting_point
  else
    counter = 1
    total = array.first
  end

  while counter < array.length do
    total = yield(total, array[counter])
    counter += 1
  end

  total
end
