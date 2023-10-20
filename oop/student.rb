# Object Oriented Programming
#  - getters & setters
#  - initialize method

class Student
  attr_accessor :first_name, :last_name, :email, :username, :password  # still needed even with `initialize` method! For getter & setter functionality

  # set up
  def initialize(firstname, lastname, email, username, password)
    @first_name = firstname
    @last_name = lastname
    @email = email
    @username = username
    @password = password
  end

  def to_s
    "First name: #{@first_name} \nLast name: #{@last_name} \nEmail: #{@email} \nUsername: #{@username} \nPassword: #{@password}"

  end

end

emily = Student.new("Emily", "Day", "emily@test.com", "emily1234", "pw1")
john = Student.new("John", "Doe", "john@test.com", "j1234", "pw2")
puts emily
puts john

puts "💜"
# puts john.username
puts john.last_name
puts "💜"
# puts emily.username
puts emily.last_name
puts "💜"
emily.last_name = john.last_name
puts "Emily: #{emily}"
puts "--"
puts "John: #{john}"

