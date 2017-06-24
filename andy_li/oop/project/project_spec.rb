require_relative 'project'
RSpec.describe Project do
  before(:each) do
    # updated this block to create two projects
    @project1 = Project.new('Project 1', 'description 1', "John Doe")
    @project2 = Project.new('Project 2', 'description 2', "Jane Doe")
  end

  it 'has a getter and setter for name attribute' do
    @project1.name = "Changed Name" # this line would fail if our class did not have a setter method
    expect(@project1.name).to eq("Changed Name") # this line would fail if we did not have a getter or if it did not change the name successfully in the previous line.
  end

  it "has a getter and setter for owner attribute" do
    @project1.owner = "New owner"

    expect(@project1.owner).to eq("New owner")
  end

  it 'has a method elevator_pitch to explain name and description' do
    expect(@project1.elevator_pitch).to eq("Project 1, description 1")
    expect(@project2.elevator_pitch).to eq("Project 2, description 2")
  end

  describe "project tasks" do
    it "has method add_tasks to add single task to tasks array and method tasks to return tasks array" do
      @project1.add_tasks("Deploy Hello World").add_tasks("Integrate Google Maps API")

      expect(@project1.tasks).to eq(["Deploy Hello World", "Integrate Google Maps API"])
    end

    it "has method print_tasks that prints each task" do
      @project1.add_tasks("Deploy Hello World").add_tasks("Integrate Google Maps API")

      expect{@project1.print_tasks}.to output("Deploy Hello World\nIntegrate Google Maps API\n").to_stdout
    end

  end
end
