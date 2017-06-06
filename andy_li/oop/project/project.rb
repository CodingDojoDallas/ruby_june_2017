class Project
  def initialize(proj_name, desc)
    @name = proj_name
    @desc = desc
  end

  def name()
    return "#{@name}"
  end

  def elevator_pitch()
    puts "#{@name}, #{@desc}"
  end

end

project1 = Project.new("Project 1", "Description 1")
puts project1.name # => "Project 1"
project1.elevator_pitch  # => "Project 1, Description 1"
