# Hashes are Ruby's primary dictionary with key/value pairs.
# Hashes are denoted with curly braces.

hash = {
  "color" => "red",
  "number" => 4
}

hash.class #=> Hash
hash.keys #=> color, number

# Hashes can be quickly looked up by key.
hash['color'] #=> "green"
hash['number'] #=> 5

# When using symbols for keys in a hash, you can use an alternate syntax.
another_hash = { :defcon => 3, :action => true }
another_hash.keys #=> [:defcon, :action]

another_hash_2 = { defcon: 3, action: true }
another_hash_2.keys #=> [:defcon, :action]

# check existence of keys and values in hash
puts hash.key?("color") #=> true
puts hash.value?(4) #=> value

# Tip: Both Arrays and Hashes are Enumerable!
# They share a lot of useful methods such as each, map, count, and more.
