# ----------- Numbers ----------- #
puts 1 + 2
puts 10 * 3
puts 100 / 4
puts "#{10 / 4} ❗️" # INTEGER DIVISION!!! (decimal dropped)
puts "#{(10 / 4).to_f} ❗️" # WON't WORK!! cus it converts 2 to a float
puts 10.0 / 4 
puts 10 / 4.to_f # (to_float) = 10/4.0

# puts "\n----------\n\n"
puts "\n#{"-"*10}\n\n"

x = 5
y = 10
puts y / x
puts "5" * 2 # works!! repeats "5" 2 times
# puts 2 * "5" # doesn't work!! order matters!!
# puts "-"*20
puts 20.times {print "-"}
puts 5.times {puts "-"}
puts 5.times {puts "hi"}
puts 20.times {puts rand(10)} # random number between 0-9 inclusive

puts "\n#{"-"*10}\n\n"

puts "4".to_i
puts "4".to_f
puts "hello".to_i # will just be 0 (no error)
puts "hello".to_f # will just be 0.0 (no error)

puts "\n#{"-"*20}\n\n"

# ------------------ METHODS: ------------------ #
puts 10.odd?
# puts 10.23.even? # error: CAN'T do even on a float
# x = 10.23
# puts x.even? # ERROR
puts (103).even?
puts 1 == 2
puts 3 == 3
puts 5 && 6 # returns 6 !?
puts 5 || 6 # returns 5 !?
puts 2 <= 5
puts 2 > 5
puts 40.to_s
# ---------------------------------------------- #

puts "\n#{"-"*20}\n\n"

puts "Simple Calculator"
puts "-"*5
puts "Enter the first number"
num_1 = gets.chomp # RETURNS A STRING!
puts "Enter the second number"
num_2 = gets.chomp
puts "The first number multiplied by the second number is #{num_1.to_f * num_2.to_f}"


# ASSIGNMENT ( + - * / mod)
puts "#{num_1} * #{num_2} = #{num_1.to_f * num_2.to_f}"
puts "-"*5
puts "#{num_1} + #{num_2} = #{num_1.to_f + num_2.to_f}"
puts "-"*5
puts "#{num_1} - #{num_2} = #{num_1.to_f - num_2.to_f}"
puts "-"*5
puts "#{num_1} / #{num_2} = #{num_1.to_f / num_2.to_f}"
puts "-"*5
puts "#{num_1} % #{num_2} = #{num_1.to_f % num_2.to_f}"
