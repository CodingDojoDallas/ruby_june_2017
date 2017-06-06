# class MyClass
#   def some_method
#     puts "this is an instance method"
#   end
# end
#
# temp = MyClass.new
# puts temp.some_method


class User
  attr_accessor :first_name, :last_name
  def initialize(first_name,last_name)
    @first_name = first_name
    @last_name = last_name
  end
  def full_name
    puts "i am #{@first_name} #{@last_name}"
  end
  def say_hello
    puts "hello!"
  end
end

user1 = User.new("timber","modisette")

user1.say_hello
user1.full_name
puts user1.last_name

# class User
#   def self.foo
#     puts "this is a class method"
#   end
# end
#
# u = User.new
# User.foo
