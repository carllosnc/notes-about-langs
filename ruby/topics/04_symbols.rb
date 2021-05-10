# Symbols are immutable, reusable constants represented internally by an
# integer value. They're often used instead of strings to efficiently convey
# specific, meaningful values.

status = :pending
puts status == :pending
puts status == 'pending'
puts status == :aproved

# Strings can be converted into symbols and vice versa.
x = status.to_s #=> "pending"
y = "argon".to_sym #=> :argon

puts x.class
puts y.class
