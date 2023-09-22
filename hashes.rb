# Hashes (= dictionaries)

sample_hash = {'a' => 1, 'b' => 2, 'c' => 3} # keys should be strings
# ^ output: {"a"=>1, "b"=>2, "c"=>3}
puts sample_hash
puts sample_hash['b']

another_hash = {a:1, b:2, c:3} # "symbols", not strings! !!!
puts another_hash
# ^ output: {:a=>1, :b=>2, :c=>3}. [:username] <-- will see this all over the place in rails
puts another_hash['a'] # silent ERROR. nothing logged since 'a' doesn't exist as a key
# puts another_hash[a] # ! ERROR since a is a symbol, not a string
puts another_hash[:a] # how you call symbols

puts ('---------- get keys from hash ----------')
print sample_hash.keys
puts "\n"
print sample_hash.values

puts ('\n---------- iterate/loop through hashes ----------')
sample_hash.each do |key, value|
  print key
  puts value
  puts "The class for key is #{key.class} and that for value is #{value.class}"
end
#^ 'String' & 'Integer'

another_hash.each do |key, value|
  print key
  puts value
  puts "The class for key is #{key.class} and that for value is #{value.class}"
end
#^ 'Symbol' & 'Integer'

puts ("\n---------- adding to / updating a hash ----------")
another_hash[:d] ="Emily"
puts another_hash
another_hash[:c] = 'ruby'
puts another_hash

puts ("\n---------- selecting from a hash ----------")
another_hash.each{ |key, val| puts "The key is #{key} and the value is #{val}."}
puts another_hash.select { |k,v| v.is_a?(String)}
puts another_hash.each { |k,v| another_hash.delete(k) if v.is_a?(String)} ## return only non-strings (only delete key)