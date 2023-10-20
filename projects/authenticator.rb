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

user_attempts = 0 
while user_attempts < 3
  username, password = user_inputs()

  filtered_hash = users.select { |user| user[:username] === username && user[:password] === password }

  if filtered_hash.length === 1
    puts "✅ Correct creds!"
    user_attempts = 0
    puts filtered_hash

    # # alternative:
    # users.each do |user|
    #   if user[:username] === username && user[:password] === password
    #     puts user
    #   end
    # end
    print "Press n to quit or any other key to continue: "

  else
    user_attempts += 1 # correct attempts don't count as one!!
    puts "❌ Incorrect creds!"      

    if user_attempts >= 3
      puts "You have exceeded the number of attempts 🚫🔒"
      puts "Goodbye... 👋"
      break
    else
      print "Press n to quit or any other key to continue: "
    end
  end

  user_choice = gets.chomp

  if user_choice.downcase === "n"
    puts "Goodbye... 👋"
    break # end the application
  else
    puts "Okay. Try again..."
  end

end
