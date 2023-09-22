# In Ruby, all FUNCTIONS are called methods
# branching = if else conditional flow!

# multiply(2, 4) # must define the method first! (execution flow is in order)

def multiply(first_num, second_num)
  first_num.to_f * second_num.to_f
end

def add(first_num, second_num)
  first_num.to_f + second_num.to_f
end

def subtract(first_num, second_num)
  first_num.to_f - second_num.to_f
end

def divide(first_num, second_num)
  first_num.to_f / second_num.to_f
end

def modulus(first_num, second_num)
  first_num.to_f % second_num.to_f
end

puts multiply(2, 4)
puts add(2, 4)
puts divide(2, 4)
puts subtract(2, 4)
puts modulus(2, 4)

def calculator(first_num, second_num, operator)
  x = first_num.to_f
  y = second_num.to_f
  if operator == "+"
    x + y
  elsif operator == "-"
    x - y
  elsif operator == "*"
    x * y
  elsif operator == "/"
    x / y
  elsif operator == "%"
    x % y
  else
    puts "Unknown operator '#{operator}', please choose from [+, -, *, /, %]"
  end # MUST HAVE AN END AFTER THE BRANCHING (if-else)!
end

# puts "Enter the first number:"
# first_number = gets.chomp
# puts "Enter the second number:"
# second_number = gets.chomp
# puts "Enter the operator:"
# operator = gets.chomp
# puts calculator(first_number, second_number, operator)

if true && false
  puts "and condition satisfied"
else
  puts "and condition NOT satisfied"
end

if true || false
  puts "and- & or-condition satisfied"
else
  puts "and- & or-condition NOT satisfied"
end