# strings
y = "A simple string"
z = 'A simple string'

# interpolation
i = "world"
k = "Hello #{i}"
puts k

# conact
a = "hello "
b = "world"
puts a + b # => hello world

# increment
a = "hello "
a << "world"
a << "!"
puts a

# cast
u = 42
o = 42.to_s
puts o.class

# long strings
output1 = "
  this is
  a multipline
  string
"
puts output1

output2 = <<-END
  this is
  a multiline
  string
END
puts output2

# replication
puts "hello world \n" * 10
