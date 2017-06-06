class Project #Attributes: name and description.  Instance method--elevator_pitch.
	def initialize(name, description)
		@project_name = name
		@project_description = description
		puts "\nCreated project #{@project_name}"
	end
	def elevator_pitch
		puts "This is project #{@project_name}, #{@project_description}"
	end
end

project1 = Project.new("DojoChat", "A chat messenger")
project1.elevator_pitch
