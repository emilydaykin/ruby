# ----------------------------------- String concatenation ----------------------------------- #
first_name = "Emily" 
middle_name = "Arisara"
puts first_name + " " + middle_name

# ------------------ String interpolation (only works with double quotes!!!) ------------------ #
puts "My first name is #{first_name} and my middle name is #{middle_name}"
puts 'My first name is #{first_name} and my middle name is #{middle_name}'  # doesn't work!

names = "#{first_name} #{middle_name}"
puts names

# ------------------------------------------ Methods ------------------------------------------#
puts names.class # don't forget the puts!!!!!
puts 10.class
puts 10.0.class
puts "---"
puts names.methods # lists all the methods
puts "---"
puts 10.to_s.class # method chaining
puts 10.to_s # method chaining
puts names.reverse
puts names.capitalize
puts names.empty? # false
puts "".empty? # true
puts "".nil? # false
puts nil.nil? # true

sentence = "Welcome to the jungle"
puts sentence
puts sentence.sub("the jungle", 'utopia') # `gsub` is "global substitute"
puts sentence

puts names.count('a') # 2
puts names.downcase.count('a') # 3
puts names.upcase
puts names.downcase
puts names.split # automatically splits by space and returns in number of lines
puts names.split('a')
puts names.split('i')
# --- returns ---
# Em
# ly Ar
# sara
puts names.is_a? String # true
puts 10235.is_a? Float # false
puts 10235.23.is_a? Float # true
# --- https://stackoverflow.com/questions/3893278/ruby-kind-of-vs-instance-of-vs-is-a ---#
puts 10.is_a? Integer # true
puts 10.kind_of? Object # true
puts 10.instance_of? Object # false
# --- #
puts 10.eql? 10 # true
puts 10.eql? '10' # false
puts [1,2,3,4,5].sum # 15
# puts [1,2,3,4,'5'].sum # error
puts 'hello'.hash # 2361088710485432755 <-- changes every time
puts names.hex # 14 ?!
puts 'hello'.hex # 0 ?!
puts ' remove all whitespace '
puts ' remove all whitespace '.lstrip # removes all whitespace at the beginning
puts ' remove all whitespace '.rstrip # removes all whitespace at the end
puts names.b # "Returns a copied string whose encoding is ASCII-8BIT."
puts names.slice(1) # gets characters at index 1
puts names.slice(1, 3) # gets characters at indices 1-3 inclusive
# puts names.replace('i', '😍') # error!!! use sub for this
puts names.sub('i', '😍') # only subs the FIRST instance
puts names.gsub('i', '😍') # subs ALL instances
puts names.replace('error') # renames it IN PLACE
puts names = "#{first_name} #{middle_name}"
# --- https://apidock.com/ruby/v2_5_5/String/to_r --- #
puts names.to_r # to ratio
puts '300/2'.to_r # 150/1
puts '9.2'.to_r # must wrap it with quotes (make it a string!)
puts '21 June 09'.to_r # 21/1
# --- #
puts names.frozen? # false (.freeze will make it like a const in js - IMMUTABLE!!)
x = 2
puts x
puts x.frozen?
x = 3
puts x # ?!

# -------------------------------- Variable Assignment -------------------------------- #
first_name = 'Emily'
puts first_name
new_first_name = first_name # doesn't REFERENCE it, but rather that the variable was at the time of reference
puts new_first_name
first_name = 'John'
puts first_name
puts new_first_name

# -------------------------------- Escaping -------------------------------- #
# simple backslash
puts "Hello there \#{new_first_name}"