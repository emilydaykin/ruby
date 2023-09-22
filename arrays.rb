x = 1..10  # creates a range from 1 to 10!
puts x
puts x.class
puts x.to_a # converts to array!!
puts "------ 1️⃣ ------"
puts x.to_a.class # "Array"

puts "------ 2️⃣ ------"
puts x.to_a.shuffle
puts "------ 3️⃣ ------"
puts x.to_a.shuffle! # `shuffle!` mutates the caller! (which happens TO THE ARRAY)
puts x
puts "------ (to keep the array)"
z = x.to_a.shuffle!
puts "z: #{z}"
puts "x: #{x}"
puts "------ 4️⃣ ------"
x = (1..10).to_a
puts "x: #{x}"
x.reverse # doesn't mutate x
puts "x: #{x.reverse}"
puts "x: #{x}" # remains the original one
x.reverse! # mutates the caller
puts "------ 5️⃣ ------"
x= "a".."z"
puts "x: #{x.to_a}"
puts "x shuffled: #{x.to_a.shuffle}"
puts "x length: #{x.to_a.length}"
puts "\n------ 6️⃣  push an new element ------"
a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
puts "a: #{a}"
puts "a.length: #{a.length}"
a << 10 # push an element to the array TO THE END (the shovel operator)
puts "a: #{a}"
puts a.last
puts a.first
a.unshift("Emily")
puts "a: #{a}"
a.append("Em") # adds new element TO THE END
puts "a: #{a}"
a.append("Emily") 
puts "a: #{a}"
a.uniq # doesn't mutate the array
puts "a.uniq: #{a.uniq}" # remove duplicates
puts "a: #{a}"
a.uniq! # DOES mutate the array whoohoo
puts "a: #{a}"
puts a.empty?
b = []
puts b.empty?
puts a.include?("Emily")
puts a.include?("Emi")
a.push("new item")
puts "a: #{a}"
a.pop
puts "a: #{a}"
b = a.pop
puts "a: #{a}"
puts "b: #{b}"
puts "\n------ 7️⃣  joining an array ------"
puts a.join
b = a.join('-')
puts b
puts "#{b.split}"
puts "#{b.split('-')}"
puts "\n------ `%w` ------"
magic_trick = %w(helllo there how are you doing today?)
puts "#{magic_trick}"
puts "\n------ `_` (underscore) grabs the last expression ------"
%w(hallo mein name ist?)
# z = _ # error. ONLY an `irb` trick!
# puts z # error. ONLY an `irb` trick!
puts "\n------"
a = "hello there how are you doing".split
puts a[0]
puts a[1]
puts a[2]
for i in a
  p "#{i}: #{a}"
end
# print a
puts "\n------ 8️⃣  looping ------"
a.each do |food|
  print food + "😍"
end
puts('/n')
a.each { |word| print word.capitalize + "♥️"}
puts('/n')

z = (1..100).to_a
puts z.select{|number| number.odd?} # looped through and tested for a condition!

puts "\n------ 🤩 ALL ARRAY METHODS 🤩 ------"
puts z.methods
puts "\n------ 🤩 ------"