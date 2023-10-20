require 'bcrypt'

users = [
  { username: "emily", password: "password1" },
  { username: "jack", password: "password2" },
  { username: "laura", password: "password3" },
  { username: "ben", password: "password4" },
  { username: "poppy", password: "password5" }
]


def create_hash_digest(password)
  BCrypt::Password.create(password)
end

def verify_hash_digest(password)
  BCrypt::Password.new(password)
end

new_password = create_hash_digest("password1")
puts new_password  # $2a$12$7bQ32mqUR4c31hYvykg7Ue878rmtTAA7jHMYxcJgE5hwRHLJaE3sW
puts new_password == "password1"  # true

## Return a new list of secure users
def create_secure_users(list_of_users)
  list_of_users.each do |user_record|
    user_record[:password] = create_hash_digest(user_record[:password])
  end
end

secure_users = create_secure_users(users)
puts secure_users

def authenticate_user(username, password, list_of_users)
  list_of_users.each do |user_record|
    if user_record[:username] == username && verify_hash_digest(user_record[:password]) == password
      puts "🎉"
      return user_record
    end
  end
  puts "❌ Credentials not correct"
end

puts authenticate_user("emily", "password1", secure_users)
puts authenticate_user("emily", "psdfassword1", secure_users)

