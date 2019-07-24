# Your Code Here

def map(source_array)
  new = []
  i = 0
  while i < source_array.length do
    new.push( yield (source_array[i]) ) 
    i += 1
  end
  return new
end

def reduce(source_array, starting_point=nil)
  if starting_point
    value = starting_point
    i =  0
  else 
    value=source_array[0]
    i = 1
  while i < source_array.length
    value =  yield (value,source_array[i])
    i += 1
  end
  value
end
    