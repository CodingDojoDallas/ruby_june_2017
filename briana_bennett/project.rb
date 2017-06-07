class Project
	attr_accessor :project_name, :project_description
	def initialize(name, description)
		@project_name = name
		@project_description = description
	end

	def elevator_pitch
		puts "#{@project_name}, #{@project_description}"
	end
end

project1 = Project.new('project one', 'first project')
puts project1.project_name
project1.elevator_pitch