# Object Oriented Programming

class Student
  @first_name
  @last_name
  @email
  @username
  @password

  def first_name_method(name)
    @first_name = name
  end
  
  def first_name_setter=(name)
    @first_name = name
  end
  
  def first_name
    @first_name # simply _returns_ this attribute
  end

  def to_s
    "First name: #{@first_name}"
  end

end

emily = Student.new
puts emily
emily.first_name_method("Emily1")
puts emily
emily.first_name_setter="Emily2"
puts emily
# puts emily.first_name_method # ❌
# puts emily.first_name_setter # ❌
puts emily.first_name