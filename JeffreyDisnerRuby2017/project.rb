

class Project
  def initialize(name, desc)
    @projectName = name
    @description = desc
  end
  def nameP
    @projectName
  end
  def elevatorPitch
    puts "Featuring Project: #{@projectName} #{@description}"
  end
end

project1 = Project.new("Project 1", "Description 1")
puts project1.nameP
project1.elevatorPitch
