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
    i =  1
  else 
    starting_point = source_array[0]
    i = 0
  while i < source_array.length do
    value = ( yield (source_array[i],value) 
    i += 1
  end
  return value
end
    