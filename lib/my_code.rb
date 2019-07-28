# Your Code Here
def map(source_array)
  new = []
 source_array.length.times { |index|
    new << yield(source_array[index])
 }
  new
end

def reduce(source_array, initial = 0)
  new = initial
 source_array.length.times { |index|
  new = yield(source_array[index], new)
 }
  new
end