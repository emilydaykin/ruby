# Create an 'authenticator' that gets user input (username & password) and returns the user object if combination correct. if the combination is incorrect after 3 tries, the user is locked out.

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
correct_creds = false

while user_attempts < 3 && !correct_creds
  username, password = user_inputs()

  user_attempts += 1

  filtered_hash = users.select { |user| user[:username] === username && user[:password] === password }

  if filtered_hash.length === 1
    correct_creds = true
    puts "✅ Correct creds!"
    puts filtered_hash
  else
    puts "❌ Incorrect creds!"
    if user_attempts < 3
      print "Press n to quit or any other key to continue: "
      user_choice = gets.chomp
  
      if user_choice === "n"
        puts "Goodbye... 👋"
        correct_creds = true  # end the application
      else
        puts "Okay try again..."
      end
    else
      puts "You have exceeded the number of attempts 🚫🔒"
    end
  end

end
