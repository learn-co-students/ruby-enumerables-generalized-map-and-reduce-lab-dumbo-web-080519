# Your Code Here
def map(arr)
  result = []
  arr.length.times do |i|
    result[i] = yield(arr[i])
  end

  result
end

def reduce(arr, start = 0)
  arr.length.times do |i|
    start = yield(arr[i], start)
  end
  
  start ? start : false
end