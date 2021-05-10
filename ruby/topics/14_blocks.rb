# blocks

# Ruby code blocks are called closures in other programming languages.
# It consist of a group of codes which is always enclosed with braces
# or written between do..end. The braces syntax always have the higher precedence
# over the do..end syntax. Braces have high precedence and do has low precedence.
# The below example shows the multi-line block.
[10, 20, 30].each do |n|
  puts n
end

# The yield statement
# The yield statement is used to call a block within a method with a value.
def met
  puts "this is method"
  yield
  puts "you will be back to method"
  yield
end

met {
  puts "this is a block"
}

# Passing parameters with yield statement
def met2
  yield 1
  puts "this is a method"
  yield 2
end

met2 { |n|
  puts "this is the block #{n}"
}

# Block variables
# We can use same variable outside and inside a block parameter. Let's see the following example.
x = "Outer variable"
3.times do |x|
  puts "Inside the block: #{x}"
end

puts "Outer the block: #{x}"

# BEGIN and END block
BEGIN {
  puts "code block is being loaded"
}

END {
  puts "code block has been loaded"
}

# Ampersand parameter (&block)
# The &block is a way to pass a reference (instead of a local variable) to the block to a method.
# Here, block word after the & is just a name for the reference, any other name can be used instead of this.
def met3(&block)
  puts "this is method"
  block.call
end

met{
  puts "this is &block example"
}

# Initializing objects with default values
# Ruby has an initializer called yield(self). Here, self is the object being initialized.
class Novel
  attr_accessor :pages, :category

  def initialize
    yield(self)
  end
end

novel = Novel.new do |n|
  n.pages = 54
  n.category = "thriller"
end

puts "I'm reading a #{novel.category} novel which has #{novel.pages} pages."
