# Your Code Here

def map(source_array)
  new = []
  i = 0
  while i < source_array.length do
    new.push( yield ) # <== Unique work
    i += 1
  end
  return new
end

map (source_array) do
  (source_array[i] * -1)
end