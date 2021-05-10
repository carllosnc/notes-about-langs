# Modules are a way of grouping together methods, classes,
# and constants. Modules give you two major benefits.

$LOAD_PATH << '.'

require "modules/calc.rb"
require "modules/base.rb"

puts Calc::info

class Machine
  include Calc
end

class CalcMachine < Machine
end

mc = CalcMachine.new
puts mc.sum(1, 2)
puts mc.subs(10, 5)
puts mc.getPi

bob = Base::Person.new(
  name="Bob",
  lastname="Foo",
  lang="Ruby"
)

puts bob.sayMyName
puts Base::Person.hello
