# Create an 'authenticator' that gets user input (username & password) and returns the user object if combination correct. if the combination is incorrect after 3 tries, the user is locked out. If credentials correct, don't exit the program; allow more input entries.

users = [
  { username: "emily", password: "password1" },
  { username: "jack", password: "password2" },
  { username: "laura", password: "password3" },
  { username: "ben", password: "password4" },
  { username: "poppy", password: "password5" }
]

puts "Welcome to the authenticator"
25.times { print "-"}

puts("\n")

def user_inputs()
  print "Username: "
  username = gets.chomp
  print "Password: "
  password = gets.chomp
  
  return [username, password]
end

def end_program(with_error_message=false)
  puts "You have exceeded the number of attempts 🚫🔒" if with_error_message
  puts "Goodbye... 👋"
  # break # (break won't work here since it's a function with no loop, but _would_ directly in code below)
  exit
end

user_attempts = 0 
while user_attempts < 3
  username, password = user_inputs()

  filtered_hash = users.select { |user| user[:username] === username && user[:password] === password }

  if filtered_hash.length === 1
    puts "✅ Correct creds!"
    user_attempts = 0
    puts filtered_hash
  else
    user_attempts += 1 # correct attempts don't count as one!!
    puts "❌ Incorrect creds!"      
    end_program(with_error_message=true) if user_attempts >= 3
  end
  
  print "Press n to quit or any other key to continue: "
  user_choice = gets.chomp

  end_program() if user_choice.downcase === "n"
  puts "Okay. Enter another set of creds:"

end
