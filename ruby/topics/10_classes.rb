# classes

class Human
  # A class variable. It is shared by all instances of this class
  @@species = "H. sapiens"

  # Basic initialize
  def initialize(name, lastname, age = 0)

    # Instance variables
    @name = name
    @lastname = lastname
    @age = age
  end

  # Basic setter method
  def name=(name)
    @name
  end

  # Basic getter method
  def name
    @name
  end

  # The above functionality can be encapsulated using the attr_acessor method as follows.
  attr_accessor :lastname, :age

  # Getter/Setter methods can also be created individuality like this
  attr_reader :lastname
  attr_writer :name

  # A class method uses self to distringuish from instance methods
  # it can only be called on the class, not an instance
  def self.say(msg)
    puts msg
  end

  # Instance method
  def species
    @@species
  end
end

# Calling the class method
Human.say("Human sayign...")

# Instances of class
jim = Human.new("Jim", "Halpert", 20)
puts jim.class
puts jim.name
puts jim.lastname
puts jim.age
puts jim.species

dwight = Human.new("Dwight", "K. Schrute")
puts dwight.class
puts dwight.name
puts dwight.lastname
puts dwight.age
puts dwight.species

puts defined? "hello world"

# Class is also an object in ruby. So a class can have instance variables.
# A class variable is shared among the class and all of its descendants.

# Base class
class Human2
  # Class variable
  @@foo = 0

  def self.foo
    @@foo
  end

  def self.foo=(value)
    @@foo = value
  end
end

class Worker < Human2
end

puts Human2.foo
puts Worker.foo

Human2.foo = 10
puts Human2.foo
puts Worker.foo

# class instance variable is not shared by the class's descendats
class Human3
  # Instance variable
  @bar = 0

  # class method
  def self.bar
    @bar
  end

  # class method
  def self.bar=(value)
    @bar = value
  end
end

class Doctor < Human3
end

puts Human3.bar #=> 0
puts Doctor.bar #=> nil
