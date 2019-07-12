
def map(source_array)
    return_array = []
    source_array.each do |x|
        return_array << yield(x)
    end
    return_array
end

def reduce(source_array, start = 0)
    source_array.each do |x|
        start = yield(start, x)
    end
    if start == 0
        return true
    end
    start
end