# Your Code Here

def map(source_array)
  new = []
  i = 0
  while i < source_array.length do
    new.push( yield  ) 
    i += 1
  end
  return new
end

