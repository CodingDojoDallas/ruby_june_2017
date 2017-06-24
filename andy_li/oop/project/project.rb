class Project
  attr_accessor :name, :desc, :owner

  def initialize(proj_name, desc, owner)
    @name = proj_name
    @desc = desc
    @owner = owner
    @tasks = []
  end

  def elevator_pitch()
    p "#{@name}, #{@desc}"
  end

  def tasks()
    return @tasks
  end

  def add_tasks(task)
    @tasks << task
    return self
  end

  def print_tasks()
    @tasks.each {|task| p task}
    return self
  end



end

project1 = Project.new("Project 1", "Description 1", "John Doe")
p project1.name # => "Project 1"
project1.elevator_pitch  # => "Project 1, Description 1"
project1.add_tasks("Deploy Hello World").add_tasks("Integrate Google Maps API")
project1.print_tasks
