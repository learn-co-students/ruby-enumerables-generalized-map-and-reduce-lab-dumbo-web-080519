def map(source_array)
  array = []
  i = 0
  while i < source_array.length 
    array << yield(source_array[i])
    i += 1
  end
  return array
end 


def reduce(source_array, starting_point = nil)
  i = 0
  if starting_point == nil 
    starting_point = source_array[0]
    i += 1
  end 
  while i < source_array.length
    starting_point = yield(starting_point, source_array[i])
    i += 1
  end
    starting_point
end 
#   if starting_point == nil 
#     source_array.each do |num|
#       total += num
#     end 
#   else 
#     total = starting_point + source_array.sum
#   end 
#   total
# end 
#   if starting_point != nil
#     i = 1
#       total = starting_point + source_array.sum
#     else 
#       total = source_array.sum 
#   end 
#   i = 0 
#   while i < source_array.length
#     element = source_array[i]
#     if element == false 
#       return false 
#     end 
#     i += 1 
#   end 
# end 