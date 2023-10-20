# Object Oriented Programming

class Student
  # `attr_accessor` will give you both getters and setters without having to create each one!
  attr_accessor :first_name, :last_name, :email

  # `attr_read` will give you only the getters (read access only!)
  attr_reader :username

  @first_name
  @last_name
  @email
  @username # = "emily123" # class definition, NOT object definition! so...
  @password

  def set_username # ... you need this to initialise this object via a setter here!
    @username = "emily12345"
  end

  # def first_name_method(name)
  #   @first_name = name
  # end
  
  # def first_name_setter=(name)
  #   @first_name = name
  # end
  
  # def first_name
  #   @first_name # simply _returns_ this attribute
  # end

  def to_s
    "First name: #{@first_name}"
  end

end

emily = Student.new
# puts emily
# emily.first_name_method("Emily1")
# puts emily
# emily.first_name_setter="Emily2"
# puts emily
# # puts emily.first_name_method # ❌
# # puts emily.first_name_setter # ❌
# puts emily.first_name

emily.first_name = "Emily"
emily.last_name = "Doe"
emily.email = "emily@test.com"
# emily.username = "emily123"
emily.set_username  # must instantiate it!

puts emily.first_name
puts emily.last_name
puts emily.email
puts emily.username
