class StudentsController < ApplicationController

  def index
    @students = Student.where("dojo_id == #{params[:dojo_id]}").references(:dojo)
#   @students = Dojo.find(params[:id]).students <--Primary Rails Method establish one to many in dojo.rb file: has_many students
    @dojo = Dojo.find(params[:dojo_id])
  end

  def new
    @dojo = Dojo.find(params[:dojo_id])
  end

  def create
    st = Student.create(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], dojo: Dojo.find(params[:dojo_id]))
    if st.valid? == false
      puts "trigger if"
      flash[:error] = "Error, please fill in all categories."
      puts "flash compiled"
      puts params[:dojo_id]
      redirect_to "/dojos/#{params[:dojo_id]}/students/new"
    else
      redirect_to "/dojos/#{params[:dojo_id]}/students"
    end
  end

  def display
    @student = Student.find(params[:id])
    @dojo = Dojo.find(params[:dojo_id])
  end

  def edit
    @student = Student.find(params[:id])
    @dojo = Dojo.find(params[:dojo_id])
  end

  def update
    Student.find(params[:id]).update(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], dojo: Dojo.find(params[:dojo_id]))
    redirect_to "/dojos/#{params[:dojo_id]}/students"
  end
  def destroy
    Student.find(params[:id]).destroy
    redirect_to "/dojos/#{params[:dojo_id]}/students"
  end
end
