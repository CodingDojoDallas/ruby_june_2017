# class User
#   def first_name=(val)
#     @first_name = val
#   end
#   def first_name
#     return @first_name
#   end
#
# end
# user1 = User.new
# user1.first_name = "piff"
# puts user1.inspect
# puts user1.first_name

class User
  attr_accessor :first_name, :last_name
  def initialize(first_name,last_name)
    @first_name = first_name
    @last_name = last_name
  end
end

piff = User.new("pif","modisette")
puts piff.last_name
