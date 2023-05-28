# ==
# !=
# >
# <

puts 10 == "10".to_i # TRUE
puts 10 == "10".to_f # TRUE
puts 10 != 9 # true
puts 10 === "10" # false cus num != string
puts 10 == "10" # FALSE (NOT like JS)

# `.eql?` compares the TYPES
puts 10.eql?(10) # true
puts 10.eql?(10.0) # false