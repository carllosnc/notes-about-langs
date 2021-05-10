# Iterator is a concept used in object-oriented language. Iteration means doing one thing many times like a loop.
# The loop method is the simplest iterator. They return all the elements from a collection, one after the other.
# Arrays and hashes come in the category of collection.

5.times do |n|
  puts "times -> #{n}"
end

# An upto iterator iterates from number x to number y.
1.upto(5) do |n|
  puts "upto -> #{n}"
end

# Here, x is the range which will be skipped during iteration.
(10..50).step(5) do |n|
  puts "step -> #{n}"
end

# A each_line iterator is used to iterate over a new line in a string.
"All\nthe\nwords\nare\nprinted\nin\na\nnew\line.".each_line do |line|
  puts line
end
