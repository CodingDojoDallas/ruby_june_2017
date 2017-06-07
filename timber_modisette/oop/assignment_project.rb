class Project
  attr_accessor :name, :description
  def initialize(name, description)
    @name = name
    @description = description
  end
  def elevator_pitch
    puts "Name:#{@name}, Description:#{@description}"
  end
end

project1 = Project.new("Save the earth","this")
project1.elevator_pitch
