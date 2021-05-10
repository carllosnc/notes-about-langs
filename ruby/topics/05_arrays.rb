# Arrays

# This is an array.
array = [1, 2, 3, 4, 5] #=> [1, 2, 3, 4, 5]

puts array.class

# Arrays can contain different types of items.
[1, 'hello', false] #=> [1, "hello", false]

# Arrays can be indexed.
# From the front...
array[0] #=> 1
array.first #=> 1
array[12] #=> nil

# ...or from the back...
array[-1] #=> 5
array.last #=> 5

# ...or with a start index and length...
array[2, 3] #=> [3, 4, 5]

# ...or with a range...
array[1..3] #=> [2, 3, 4]

# You can reverse an Array.
# Return a new array with reversed values
[1,2,3].reverse #=> [3,2,1]
# Reverse an array in place to update variable with reversed values
a = [1,2,3]
a.reverse! #=> a==[3,2,1] because of the bang ('!') call to reverse

# Like arithmetic, [var] access is just syntactic sugar
# for calling a method '[]' on an object.
array.[] 0 #=> 1
array.[] 12 #=> nil

# You can add to an array...
array << 6 #=> [1, 2, 3, 4, 5, 6]
# Or like this
array.push(6) #=> [1, 2, 3, 4, 5, 6]

# ...and check if an item exists in an array
array.include?(1) #=> true

# Loop

# for in
for value in [1, 2, 3, 4, 5]
  puts "for in => #{value}"
end

[1, 2, 3, 4, 5].each { |value|
  puts "each (brackets) => #{value}"
}

# each
[1, 2, 3, 4, 5].each do |value|
  puts "each (block) => #{value}"
end

# each with index
["a", "b", "c"].each_with_index do |value, index|
  puts "each with index - #{index} : #{value}"
end
