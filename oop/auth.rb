# $LOAD_PATH << "." # adding current directory so that "require" works
# require 'crud'

# if not, this `require_relative` would work
require_relative 'crud'

users = [
  { username: "emily", password: "password1" },
  { username: "jack", password: "password2" },
  { username: "laura", password: "password3" },
  { username: "ben", password: "password4" },
  { username: "poppy", password: "password5" }
]

secure_users = Crud.create_secure_users(users)
puts secure_users

# puts authenticate_user("emily", "password1", secure_users)
# puts authenticate_user("emily", "psdfassword1", secure_users)