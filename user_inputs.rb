# puts "What is your first name?"
# first_name = gets.chomp
# puts "Thank you, you said your first name is #{first_name}"

# puts "Enter a number to multiply by 2"
# input = gets.chomp # gets a string back
# # puts input * 2 # string CONCATENATION ("5" + "5" = "55")
# puts input.to_i * 2

##### ASSIGNMENT:
puts "Enter your first name"
first_name = gets.chomp
puts "Enter your second name"
second_name = gets.chomp
names = "#{first_name} #{second_name}"
puts "Your names are #{names}"
puts "Your names reversed are #{names.reverse}"
puts "Your name has #{first_name.length + second_name.length} characters in it" 
# Better solution:
puts "Your name has #{names.length - 1} characters in it" #