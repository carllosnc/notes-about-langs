# commons types
puts "hello world".class
puts 10.class
puts 1.1.class
puts true.class
puts false.class
puts [].class
puts :foo.class
puts nil.class

# By convention, use snake_case for variable names.
snake_case = true

# Use descriptive variable names
path_to_project_root = '/good/name/'
m = '/bad/name/'

# variable assigment
x = "hello"
y = "world"

a = "Hello"
a<<"world"

puts "#{x} #{y}"
puts a

# Variable's scopes are defined by the way we name them
# Variable that start with $ have global scope
$global = "i'm a global variable"
defined? $global #=> global-variable

# Variables that start with @ have instance scope
@instance_variable = "i'm an instance variable"
defined? @instance_variable #=> instance-variable

# Variable that start with @@ have class scope
@@class_variable = "i'm an class variable"
defined? @@class_variable

# Variables that start with a capital letter are constants
CONSTANT = "i'm a constant"
defined? CONSTANT #=> constant
