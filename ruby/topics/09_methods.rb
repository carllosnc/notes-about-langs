# Methods
def double(x)
  x * 2
end

# You can set default values for parameters
def method_name(foo: "foo", bar: "bar", span: "span")
  puts foo
  puts bar
  puts span
end

# And enter argument by name
method_name(foo: "another foo", bar: "another bar", span: "span")

# The Return statement in ruby is used to return one or more values from a Ruby Method
def test
  i = 100
  j = 200
  k = 300
  return i, j, k
end
puts test #=> 100, 200, 300

# Methods and blocks implicity return the value of the last statement
puts double(2)

# Parenteses are optional where the interpretation is unambiguous.
puts double 3 #=> 6
puts double double 3 #=> 12

def sum(x, y)
  x + y
end

# Method arguments are separated by a comma.
puts sum 3, 4 #=> 7
puts sum sum(3, 4), 5 #=>  12

# Yield
# All methods have an implicit, optional block parameter
# It can be called with the 'yeild' keyword
def surround
  puts "{"
    yield
  puts "}"
end

surround {
  puts "adding a new code block here!"
}

# Blocks can be converted into a 'proc' object, which wraps the block
# and allows it to be passed to another method, bound to a different scope,
# or manipulated otherwise. This is most common in method parameter lists,
# where you frequently see a trailing '&block' parameter that will accept
# the block, if one is given, and convert it to a 'Proc'. The naming here is
# convention; it would work just as well with '&pineapple'.
def guests(&block)
  block.class #=> Proc
  block.call(4)
end

puts guests {
  |n| "you have #{n} guests"
}

# You can pass a list of arguments, which will be converted into an array.
# That's what splat operator ("*") is for.
def multi(*array)
  array.each { |item|
    puts "Args -> #{item}"
  }
end

multi(1, 2, 3, 4, 5)

# Destructuring
#Ruby will automatically destructure arrays on assignment to multiple variables.
foo, bar, span = [1, 2 ,3]
puts foo #=> 1
puts bar #=> 2
puts span #=> 3

# In some cases, you will want to use the splat operator: `*` to prompt destructuring
# of an array into a list.

ranked_competitor = ["John", "Sally", "Dinngus", "Moe", "Marcy"]

def best(first, second, third)
  puts "Winnersa are #{first}, #{second} and #{third}."
end

best *ranked_competitor.first(3) #=> Winners are John, Sally, and Dingus.

# The splat operator can also be used in parameters
def better(first, second, third, *others)
  puts "Winners are #{first}, #{second}, and #{third}."
  puts "There were #{others.count} other participants."
end

better *ranked_competitor
#=> Winners are John, Sally, and Dingus.
#=> There were 2 other participants.

# By convention, all methods that return booleans end with a question mark
puts 5.even? #=> false
puts 5.odd? #=> true

# By convention, if a method name ends with an exclamation mark, it does something destructive
# like mutate the receiver. Many methods have a ! version to make a change, and
# a non-! version to just return a new changed version.

company_name = "Dunder Mifflin"
company_name.upcase  #=> DUNDER MIFFLIN
company_name = #=> Dunder Mifflin

another_company_name = "Dunder Mifflin"
another_company_name.upcase! #=> DUNDER MIFFLIN
another_company_name #=> DUNDER MIFFLIN
