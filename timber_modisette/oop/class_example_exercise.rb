class CodingDojo
  @@no_of_branches = 0 #class variable
  attr_accessor :branch_id, :branch_name, :branch_address
  def initialize(id, name, address)
    @branch_id = id
    @branch_name = name
    @branch_address = address
    @@no_of_branches += 1
    # puts "Created branch #{@@no_of_branches}"
  end
  def hello
    puts "Hello CodingDojo!"
  end
  def display_all
    puts "Branch ID: #{@branch_id}"
    puts "Branch Name: #{@branch_name}"
    puts "Branch Address: #{@branch_address}"
  end
end
# now using above class to create objects
branch = CodingDojo.new(253, "SF CodingDojo", "Sunnyvale CA")
puts branch.branch_name
