# Loops
# In Ruby, traditional `for` loops aren't very common. Instead, these
# basic loops are implemented using enumerable, which hinges on `each`.

# The `do |variable| ... end` construct above is called a 'block'. Blocks are similar
# to lambdas, anonymous functions or closures in other programming languages. They can
# be passed around as objects, called, or attached as methods.
#
# The 'each' method of a range runs the block once for each element of the range.
# The block is passed a counter as a parameter.

(1..5).each do |counter|
  puts "iteraction -> #{counter}"
end

for counter in 1..5
  puts "iteraction -- #{counter}"
end

# You can also surround blocks in curly brackets.
(1..5).each { |counter|
  puts "iteration == #{counter}"
}

# The contents of data structures can also be iterated using each.
[1, 2, 3, 4, 5].each do |element|
  puts "#{element} is part of the array"
end

{color: "red", number: 7}.each do |key, value|
  puts "#{key} - #{value}"
end

# If you still need an index you can use 'each_with_index' and define an index variable.
[1, 2, 3, 4, 5].each_with_index do |element, index|
  puts "#{index} -- #{element}"
end

# while
counter = 1
while counter <= 5 do
  puts "while - #{counter}"
  counter += 1
end

# There are a bunch of other helpful looping functions in Ruby.
# For example: 'map', 'reduce', 'inject', the list goes on.
# Map, for instance, takes the array it's looping over, does something
# to it as defined in your block, and returns an entirely new array.

double = [1, 2, 3, 4, 5].map do |element|
  element * 2
end

print double

# Ruby until Loop
i = 1
until i === 10
  puts "Until - #{i}"
  i+=1
end
